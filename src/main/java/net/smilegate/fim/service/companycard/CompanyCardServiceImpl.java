package net.smilegate.fim.service.companycard;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import net.smilegate.fim.mappers.fim.companycard.CompanyCardFimMapper;
import net.smilegate.fim.mappers.sgerp.CompanyCardSgErpMapper;
import net.smilegate.fim.util.FileUtil;
import net.smilegate.fim.vo.FileVO;
//import net.smilegate.fim.vo.FileVO;
import net.smilegate.fim.vo.companycard.CompanyCardDetailVO;
import net.smilegate.fim.vo.companycard.CompanyCardMasterFileVO;
import net.smilegate.fim.vo.companycard.CompanyCardMasterVO;
import net.smilegate.fim.vo.companycard.CompanyCardVO;

@Slf4j
@RequiredArgsConstructor
@Service
public class CompanyCardServiceImpl implements CompanyCardService{

	private final FileUtil fileUtil;
	private final CompanyCardSgErpMapper erpMapper;
	private final CompanyCardFimMapper fimMapper;
//	private final MdiMapper mdiMapper;

	@Override
	public Map<String, Object> getCompanyCardList(String companySeq, String empSeq) throws Exception {
		// TODO Auto-generated method stub
		Map param = new HashMap();

		param.put("companySeq", companySeq);
		param.put("empSeq", empSeq);

		Map<String, Object> rtnMap = new HashMap<String, Object>();

		List<CompanyCardVO> list =  erpMapper.getCompanyCardList(param);

		rtnMap.put("companyCardList", list);
		return rtnMap;

	}

	@Override
	public void saveCompanyCardMaster(MultipartHttpServletRequest request, CompanyCardMasterVO vo) throws Exception, NullPointerException {
		// TODO Auto-generated method stub

		int cardUseSeq = fimMapper.getCompanyCardMasterSeq();
		int f_cardUseSeq; //-- 파일 저장시 사용할 키값.

		//-- 법인카드 결제 마스터 저장.
		CompanyCardMasterVO mVo;
		if(vo.getCardUseSeq() == 0) {
			f_cardUseSeq = cardUseSeq;
			vo.setLogTag("I");
			vo.setLogUserId(vo.getRegUserId());
			vo.setCardUseSeq(cardUseSeq);
			fimMapper.saveCompanyCardMaster(vo);
			fimMapper.insertCompanyCardMasterLog(vo);
		}
		else {
			f_cardUseSeq = vo.getCardUseSeq();
			mVo = fimMapper.getCompanyCardMaster(vo.getCardUseSeq());
			mVo.setLogTag("U");//-- 변경일때는 U
			mVo.setLogUserId(vo.getRegUserId());
			fimMapper.saveCompanyCardMaster(vo);
			fimMapper.insertCompanyCardMasterLog(mVo);
		}

		//-- 법인카드 승인내역 저장.
		List<CompanyCardDetailVO> dVoList = vo.getCardDetailList();
		for(CompanyCardDetailVO dVo: dVoList) {

			if(dVo.getCardUseSeq() == 0) {

				dVo.setCardUseSeq(cardUseSeq);
				dVo.setLogTag("I");
				dVo.setLogUserId(vo.getRegUserId());
				fimMapper.saveCompanyCardDetail(dVo);
				fimMapper.insertCompanyCardDetailLog(dVo);
			}
			else {
				CompanyCardDetailVO _dVo = fimMapper.getCompanyCardDetail(dVo);
				_dVo.setLogTag("U");
				_dVo.setLogUserId(vo.getRegUserId());
				fimMapper.insertCompanyCardDetailLog(_dVo);
				fimMapper.saveCompanyCardDetail(dVo);

			}
		}

		//-- 파일저장
		List<FileVO> fileVOList = fileUtil.makeFileVO(request);
		for(FileVO fileVO : fileVOList) {
			CompanyCardMasterFileVO fVo = new CompanyCardMasterFileVO();
			fVo.setCardUseSeq(f_cardUseSeq);
			fVo.setOFileName(fileVO.getOriginalFileNm());
			fVo.setMFileName(fileVO.getFileNm());
			fVo.setFileSize(fileVO.getFileSize());
			fVo.setFilePath(fileVO.getFilePath());
			fVo.setIsDelete("N");
			fVo.setLogTag("I");
			fVo.setLastUserId(vo.getRegUserId());
			fVo.setLogUserId(vo.getRegUserId());

			fimMapper.insertCompanyCardMasterFile(fVo);
			fimMapper.insertCompanyCardMasterFileLog(fVo);
			log.debug("getFileNm ====> " + fileVO.getFileNm());
			log.debug("getOriginalFilename ====> " + fileVO.getOriginalFileNm());
		}

//		log.debug(fimMapper.getCompanyCardMasterSeq()+"");


	}

	@Override
	public int getCompanyCardMasterSeq() throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void getCompanyCardMaster(String cardUseSeq) throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public Map<String, Object> getCompanyCardMasterList(String fromYm, String toYm) throws Exception {
		// TODO Auto-generated method stub

		Map<String, Object> rtnMap = new HashMap<String, Object>();

		rtnMap.put("cardMasterList", fimMapper.getCompanyCardMasterList(fromYm, toYm));
		return rtnMap;
	}

	@Override
	public Map<String, Object> getCardUseData(int cardUseSeq) throws Exception {
		// TODO Auto-generated method stub
		Map<String, Object> rtnMap = new HashMap<String, Object>();

		CompanyCardMasterVO mst = fimMapper.getCompanyCardMaster(cardUseSeq);
		mst.setCardDetailList(fimMapper.getCompanyCardDetailList(cardUseSeq));

		List<CompanyCardMasterFileVO> fileList = fimMapper.getFileList(cardUseSeq);
		rtnMap.put("cardData", mst);
		rtnMap.put("fileList", fileList);

		return rtnMap;
	}

	@Override
	public Map<String, Object> doDeleteFile(int cardUseSeq, int fileSerl, String regUserId) throws Exception {
		// TODO Auto-generated method stub
		Map<String, Object> rtnMap = new HashMap<String, Object>();

		CompanyCardMasterFileVO fVo = new CompanyCardMasterFileVO();
		fVo = fimMapper.getFile(cardUseSeq, fileSerl);
		fVo.setLogTag("D");
		fVo.setLogUserId(regUserId);
		fimMapper.doDeleteFile(cardUseSeq, fileSerl, regUserId);
		fimMapper.insertCompanyCardMasterFileLog(fVo);

		List<CompanyCardMasterFileVO> fileList = fimMapper.getFileList(cardUseSeq);
		rtnMap.put("fileList", fileList);

		return rtnMap;
	}

	@Override
	public Map<String, Object> getCompanyCardConfirmList(String companySeq, String cardCd, String calcDate,
			String empSeq) throws Exception {

		Map<String, Object> rtnMap = new HashMap<String, Object>();

		List<CompanyCardDetailVO> list = erpMapper.getCompanyCardConfirmList(companySeq, cardCd, calcDate, empSeq);

		rtnMap.put("confirmList", list);

		return rtnMap;
	}
}

package net.smilegate.fim.service.companycard.jquery;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import net.smilegate.fim.controller.companycard.account.AccountController;
import net.smilegate.fim.mappers.sgerp.AccountMapper;
import net.smilegate.fim.util.FileUtil;
import net.smilegate.fim.vo.FileVO;
import net.smilegate.fim.vo.account.CompanyCardMasterVO;
import net.smilegate.fim.vo.account.CompanyCardVO;

@Slf4j
@RequiredArgsConstructor
@Service
public class AccountServiceImpl implements AccountService{

	private final FileUtil fileUtil;
	private final AccountMapper mapper;
//	private final MdiMapper mdiMapper;

	@Override
	public Map<String, Object> getCompanyCardList(String companySeq, String empSeq) throws Exception {
		// TODO Auto-generated method stub
		Map param = new HashMap();

		param.put("companySeq", companySeq);
		param.put("empSeq", empSeq);

		Map<String, Object> rtnMap = new HashMap<String, Object>();

		List<CompanyCardVO> list =  mapper.getCompanyCardList(param);

		rtnMap.put("companyCardList", list);
		return rtnMap;

	}

	@Override
	public void insertAccount(MultipartHttpServletRequest request, CompanyCardMasterVO vo) throws Exception {
		// TODO Auto-generated method stub
		List<FileVO> fileVOList = fileUtil.makeFileVO(request);

        for(FileVO fileVO : fileVOList) {
        	log.debug("getFileNm ====> " + fileVO.getFileNm());
        	log.debug("getOriginalFilename ====> " + fileVO.getOriginalFileNm());
        }
	}

}

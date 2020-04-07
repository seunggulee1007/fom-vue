package net.smilegate.fim.service.companycard;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import net.smilegate.fim.vo.companycard.CompanyCardDetailVO;
import net.smilegate.fim.vo.companycard.CompanyCardMasterVO;
import net.smilegate.fim.vo.companycard.CompanyCardVO;

public interface CompanyCardService {

	/**
	 * Sequence에서 법인카드 키를 가져온다.
	 * @return
	 * @throws Exception
	 */
	public int getCompanyCardMasterSeq() throws Exception;

	/**
	 * 정산내역 저장.
	 * @param request
	 * @param vo
	 * @throws Exception
	 * @throws NullPointerException
	 */
	public void saveCompanyCardMaster(MultipartHttpServletRequest request, CompanyCardMasterVO vo) throws Exception, NullPointerException;

	/**
	 * 개인의 법인카드조회.
	 * @param companySeq
	 * @param empSeq
	 * @return
	 * @throws Exception
	 */
	public Map<String, Object> getCompanyCardList(String companySeq, String empSeq) throws Exception;


	public void getCompanyCardMaster(@Param("cardUseSeq") String cardUseSeq) throws Exception;

	/**
	 * 법인카드 결제내역조회.
	 * @param yyyymm 결제년월
	 * @return
	 * @throws Exception
	 */
	public List<CompanyCardDetailVO> getCompanyCardUseList(String yyyymm) throws Exception;

	/**
	 * 법인카드 정산내역 마스터 조회.
	 * @param fromYm 조회년월 From
	 * @param toYm 조회년월 To
	 * @return
	 * @throws Exception
	 */
	public Map<String, Object> getCompanyCardMasterList(String fromYm, String toYm) throws Exception;

	/**
	 * 특정 법인카드 정산내역 조회.
	 * @param cardUseSeq
	 * @return
	 * @throws Exception
	 */
	public Map<String, Object> getCardUseData(int cardUseSeq) throws Exception;

	/**
	 * 첨부파일을 삭제 한다.
	 * @param cardUseSeq 법인카드 내부키
	 * @param fileSerl 파일순번.
	 * @param 등록자 userid
	 * @return
	 * @throws Exception
	 */
	public Map<String, Object> doDeleteFile(int cardUseSeq, int fileSerl, String regUserId) throws Exception;
}

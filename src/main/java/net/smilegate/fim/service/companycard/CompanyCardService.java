package net.smilegate.fim.service.companycard;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import net.smilegate.fim.vo.companycard.CompanyCardDetailVO;
import net.smilegate.fim.vo.companycard.CompanyCardMasterVO;
import net.smilegate.fim.vo.companycard.CompanyCardVO;

public interface CompanyCardService {

	public int getCompanyCardMasterSeq() throws Exception;

	public void saveCompanyCardMaster(MultipartHttpServletRequest request, CompanyCardMasterVO vo) throws Exception, NullPointerException;

	public Map<String, Object> getCompanyCardList(String companySeq, String empSeq) throws Exception;

	public void getCompanyCardMaster(@Param("cardUseSeq") String cardUseSeq) throws Exception;

	public List<CompanyCardDetailVO> getCompanyCardUseList(String yyyymm) throws Exception;
}

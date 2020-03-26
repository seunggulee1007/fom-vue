package net.smilegate.fim.service.companycard.jquery;

import java.util.List;
import java.util.Map;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import net.smilegate.fim.vo.account.CompanyCardMasterVO;
import net.smilegate.fim.vo.account.CompanyCardVO;

public interface AccountService {

	public Map<String, Object> getCompanyCardList(String companySeq, String empSeq) throws Exception;

	public void insertAccount(MultipartHttpServletRequest request, CompanyCardMasterVO vo) throws Exception;
}

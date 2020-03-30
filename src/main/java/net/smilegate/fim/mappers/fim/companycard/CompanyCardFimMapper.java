package net.smilegate.fim.mappers.fim.companycard;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import net.smilegate.fim.vo.companycard.CompanyCardDetailVO;
import net.smilegate.fim.vo.companycard.CompanyCardMasterFileVO;
import net.smilegate.fim.vo.companycard.CompanyCardMasterVO;
import net.smilegate.fim.vo.companycard.CompanyCardVO;

@Mapper
public interface CompanyCardFimMapper {

	public int getCompanyCardMasterSeq() throws Exception;

	public void saveCompanyCardMaster(CompanyCardMasterVO vo) throws Exception;

	public void insertCompanyCardMasterLog(CompanyCardMasterVO vo) throws Exception;

	public void saveCompanyCardDetail(CompanyCardDetailVO vo) throws Exception;

	public void insertCompanyCardDetailLog(CompanyCardDetailVO vo) throws Exception;

	public CompanyCardMasterVO getCompanyCardMaster(@Param("cardUseSeq") int cardUseSeq) throws Exception;

	public CompanyCardDetailVO getCompanyCardDetail(CompanyCardDetailVO vo) throws Exception;

	public CompanyCardMasterFileVO insertCompanyCardMasterFile(CompanyCardMasterFileVO vo) throws Exception;

	public CompanyCardMasterFileVO insertCompanyCardMasterFileLog(CompanyCardMasterFileVO vo) throws Exception;
}

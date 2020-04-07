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

	public void insertCompanyCardMasterFile(CompanyCardMasterFileVO vo) throws Exception;

	public void insertCompanyCardMasterFileLog(CompanyCardMasterFileVO vo) throws Exception;

	public List<CompanyCardMasterVO> getCompanyCardMasterList(@Param("fromYm") String fromYm, @Param("toYm") String toYm) throws Exception;

	public List<CompanyCardDetailVO> getCompanyCardDetailList(@Param("cardUseSeq") int cardUseSeq) throws Exception;

	public List<CompanyCardMasterFileVO> getFileList(@Param("cardUseSeq") int cardUseSeq) throws Exception;

	public CompanyCardMasterFileVO getFile(@Param("cardUseSeq") int cardUseSeq, @Param("fileSerl") int fileSerl) throws Exception;

	public void doDeleteFile(@Param("cardUseSeq") int cardUseSeq, @Param("fileSerl") int fileSerl, @Param("regUserId") String regUserId) throws Exception;
}

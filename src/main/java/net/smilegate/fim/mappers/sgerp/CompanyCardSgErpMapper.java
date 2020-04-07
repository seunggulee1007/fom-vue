package net.smilegate.fim.mappers.sgerp;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import net.smilegate.fim.vo.companycard.CompanyCardDetailVO;
import net.smilegate.fim.vo.companycard.CompanyCardVO;

@Mapper
public interface CompanyCardSgErpMapper {

	public List<CompanyCardVO> getCompanyCardList(Map param) throws Exception;

	public List<CompanyCardDetailVO> getCompanyCardUseList(@Param("yyyymm") String yyyy) throws Exception;

	public List<CompanyCardDetailVO> getCompanyCardConfirmList(@Param("companySeq") String companySeq,
																@Param("cardCd") String cardCd,
																@Param("calcDate") String calcDate,
																@Param("empSeq") String empSeq) throws Exception;
}

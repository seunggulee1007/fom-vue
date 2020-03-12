package net.smilegate.fim.mappers.sgerpma;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import net.smilegate.fim.vo.ExpenseVO;

@Mapper
public interface SgerpmaMapper {
    
    /**
     * 공통 (SFG제외) 비용매핑정보 조회
     * @return
     */
    public List<ExpenseVO> selectResultCostMap(ExpenseVO expenseVO);
    
    /**
     * SFG 비용매핑정보 조회
     * @return
     */
    public List<ExpenseVO> selectResultCostMap1(ExpenseVO expenseVO);
    
    /**
     * 임원 비용매핑 정보 조회
     * @return
     */
    public List<ExpenseVO> selectResultCardCostMap(ExpenseVO expenseVO);
    
    /**
     * 임원 여부 확인
     * @param userNm
     * @return
     */
    public String getImwonCheck(@Param("userNm") String userNm);
    
}

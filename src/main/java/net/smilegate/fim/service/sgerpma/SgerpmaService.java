package net.smilegate.fim.service.sgerpma;

import java.util.Map;

import net.smilegate.fim.vo.ExpenseVO;

public interface SgerpmaService {

    /**
     * 공통 (SFG제외) 비용매핑정보 조회
     * @Param expenseVO
     * @return Map<String, Object>
     */
    public Map<String, Object> selectResultCostMap(ExpenseVO expenseVO);
    
    /**
     * SFG 비용매핑정보 조회
     * @Param expenseVO
     * @return Map<String, Object>
     */
    public Map<String, Object> selectResultCostMap1(ExpenseVO expenseVO);
    
    /**
     * 임원 비용매핑 정보 조회
     * @Param expenseVO
     * @return
     */
    public Map<String, Object> selectResultCardCostMap(ExpenseVO expenseVO);
    
    /**
     * 임원 여부 확인
     * @param userNm
     * @return Map<String, Object>
     */
    public Map<String, Object> getImwonCheck(String userNm);
    
}

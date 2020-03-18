package net.smilegate.fim.service.sgerpma;

import java.util.Map;

import net.smilegate.fim.vo.ExpenseVO;

public interface SgerpmaService {

    /**
     * 비용매핑정보 조회
     * @Param expenseVO
     * @return Map<String, Object>
     */
    public Map<String, Object> selectResultCostMap(ExpenseVO expenseVO);
    
    /**
     * SFG 비용매핑정보 조회(ActivityNm)
     * @Param expenseVO
     * @return Map<String, Object>
     */
    public Map<String, Object> selectResultCostMapByActivityNm(ExpenseVO expenseVO);
    
    /**
     * 임원 여부 확인
     * @param userNm
     * @return Map<String, Object>
     */
    public Map<String, Object> getImwonCheck(String userNm);
    
}

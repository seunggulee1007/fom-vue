package net.smilegate.fim.service.expense;

import java.util.Map;

public interface ExpenseService {

    /**
     * 비용 항목 조회
     * @param expenseVO
     * @return
     */
    public Map<String, Object> selectExpenseList(Map<String, Object> searchRequest);
    
}

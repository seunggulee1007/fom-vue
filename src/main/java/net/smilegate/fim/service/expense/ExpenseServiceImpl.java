package net.smilegate.fim.service.expense;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import net.smilegate.fim.mappers.fim.JpaExpenseMapper;
import net.smilegate.fim.specification.ExpenseSpecification;
import net.smilegate.fim.vo.ExpenseVO;

@RequiredArgsConstructor
@Service
public class ExpenseServiceImpl implements ExpenseService {
    
    private final JpaExpenseMapper jpaExpenseMapper;
    
    public Map<String, Object> selectExpenseList(Map<String, Object> searchRequest) {
        Map<String, Object> map = new HashMap<>();
        List<ExpenseVO> expenseList = jpaExpenseMapper.findAll(ExpenseSpecification.searchWith(searchRequest));
        map.put("expenseList", expenseList);
        return map;
    }
}

package net.smilegate.fim.service.expense;

import java.util.Map;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import net.smilegate.fim.vo.TiarCostVO;

public interface ExpenseService {

    public Map<String, Object> insertExpense(MultipartHttpServletRequest request ,TiarCostVO tiarCost);
    
}

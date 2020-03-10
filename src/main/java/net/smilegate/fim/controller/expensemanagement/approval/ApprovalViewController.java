package net.smilegate.fim.controller.expensemanagement.approval;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/expense_management/approval")
public class ApprovalViewController {
    
    /**
     * 지출결의서 조회 페이지
     * @return
     */
    @GetMapping("/expense_history")
    public String expenseHistory() {
        return "/fim/expense_management/approval/expense_history";
    }
    
    /**
     * 지출결의서 작성
     * @return
     */
    @GetMapping("/expense")
    public String expense() {
        return "/fim/expense_management/approval/expense";
    }
    
}

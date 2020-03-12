package net.smilegate.fim.controller.expensemanagement;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @apiNote 비용정산 관리 화면 컨트롤러
 * @since 2020.02.10
 * @author es-seungglee
 *
 */
@Controller
@RequestMapping("/expense_management")
public class ExpenseManagementViewController {
    
    /**
     * 
     * @return
     */
    @GetMapping("/advance_payment")
    public String advancePayment() {
        return "/fim/expense_management/advance_payment";
    }
    
    /**
     * 
     * @return
     */
    @GetMapping("/cafeteria")
    public String cafeteria() {
        return "/fim/expense_management/cafeteria";
    }
    
    /**
     * 
     * @return
     */
    @GetMapping("/cafeteria_mobile")
    public String cafeteriaMobile() {
        return "/fim/expense_management/cafeteria_mobile";
    }
    
    /**
     * 
     * @return
     */
    @GetMapping("/taxi")
    public String taxi() {
        return "/fim/expense_management/taxi";
    }
    
    /**
     * 
     * @return
     */
    @GetMapping("/workshop")
    public String workshop() {
        return "/fim/expense_management/workshop";
    }
    
}

package net.smilegate.fim.controller.expensemanagement;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import net.smilegate.fim.controller.CommonController;

/**
 * @apiNote 비용정산 관리 화면 컨트롤러
 * @since 2020.02.10
 * @author es-seungglee
 *
 */
@Controller
@RequestMapping("/expenseManagement")
public class ExpenseManagementViewController extends CommonController {
    
    private final String prefix = "/fim/expenseManagement";
    
    /**
     * 
     * @return
     */
    @GetMapping("/advancePayment")
    public String advancePayment() {
        saveUrl();
        return prefix + "/advancePayment";
    }
    
    /**
     * 
     * @return
     */
    @GetMapping("/cafeteria")
    public String cafeteria() {
        saveUrl();
        return prefix + "/cafeteria";
    }
    
    /**
     * 
     * @return
     */
    @GetMapping("/cafeteriaMobile")
    public String cafeteriaMobile() {
        saveUrl();
        return prefix + "/cafeteriaMobile";
    }
    
    /**
     * 
     * @return
     */
    @GetMapping("/taxi")
    public String taxi() {
        saveUrl();
        return prefix + "/taxi";
    }
    
    /**
     * 
     * @return
     */
    @GetMapping("/workshop")
    public String workshop() {
        saveUrl();
        return prefix + "/workshop";
    }
    
}

package net.smilegate.fim.controller.expensemanagement.bill;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 
 * @author es-seungglee
 *
 */
@Controller
@RequestMapping("/expense_management/bill")
public class BillViewController {
    
    private final String prefix = "/fim/expenseManagement/bill";
    /**
     * 
     * @return
     */
    @GetMapping("/bill")
    public String bill() {
        return prefix + "/bill";
    }
    
    /**
     * 
     * @return
     */
    @GetMapping("/taxBill")
    public String taxBill() {
        return prefix + "/taxBill";
    }
    
}

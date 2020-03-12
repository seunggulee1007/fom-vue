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

    /**
     * 
     * @return
     */
    @GetMapping("/bill")
    public String bill() {
        return "/fim/expense_management/bill/bill";
    }
    
    /**
     * 
     * @return
     */
    @GetMapping("/tax_bill")
    public String taxBill() {
        return "/fim/expense_management/bill/tax_bill";
    }
    
}

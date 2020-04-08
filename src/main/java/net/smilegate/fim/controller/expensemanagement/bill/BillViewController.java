package net.smilegate.fim.controller.expensemanagement.bill;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import net.smilegate.fim.controller.CommonController;

/**
 * 
 * @author es-seungglee
 *
 */
@Controller
@RequestMapping("/expenseManagement/bill")
public class BillViewController extends CommonController {
    
    private final String prefix = "/fim/expenseManagement/bill";
    /**
     * 
     * @return
     */
    @GetMapping("/bill")
    public String bill() {
        saveUrl();
        return prefix + "/bill";
    }
    
    /**
     * 
     * @return
     */
    @GetMapping("/taxBill")
    public String taxBill() {
        saveUrl();
        return prefix + "/taxBill";
    }
    
}

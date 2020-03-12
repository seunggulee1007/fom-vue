package net.smilegate.fim.controller.companycard.managing;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 
 * @author es-seungglee
 *
 */
@Controller
@RequestMapping("/company_card/managing")
public class MangingViewController {
    
    /**
     * 
     * @return
     */
    @GetMapping("/com_limit")
    public String comLimit() {
        return "/fim/company_card/managing/com_limit";
    }
    
    /**
     * 
     * @return
     */
    @GetMapping("/limit_management")
    public String limitManagement() {
        return "/fim/company_card/managing/limit_management";
    }
    
    /**
     * 
     * @return
     */
    @GetMapping("/list_mail")
    public String listMail() {
        return "/fim/company_card/managing/list_mail";
    }
    
    /**
     * 
     * @return
     */
    @GetMapping("/send_mail")
    public String sendMail() {
        return "/fim/company_card/managing/send_mail";
    }
    
    /**
     * 
     * @return
     */
    @GetMapping("/user_limit")
    public String userLimit() {
        return "/fim/company_card/managing/user_limit";
    }
}

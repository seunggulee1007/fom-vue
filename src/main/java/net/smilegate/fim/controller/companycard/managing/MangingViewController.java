package net.smilegate.fim.controller.companycard.managing;

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
@RequestMapping("/companyCard/managing")
public class MangingViewController extends CommonController {
    
    /**
     * 
     * @return
     */
    @GetMapping("/com_limit")
    public String comLimit() {
        saveUrl();
        return "/fim/company_card/managing/com_limit";
    }
    
    /**
     * 
     * @return
     */
    @GetMapping("/limit_management")
    public String limitManagement() {
        saveUrl();
        return "/fim/company_card/managing/limit_management";
    }
    
    /**
     * 
     * @return
     */
    @GetMapping("/list_mail")
    public String listMail() {
        saveUrl();
        return "/fim/company_card/managing/list_mail";
    }
    
    /**
     * 
     * @return
     */
    @GetMapping("/send_mail")
    public String sendMail() {
        saveUrl();
        return "/fim/company_card/managing/send_mail";
    }
    
    /**
     * 
     * @return
     */
    @GetMapping("/user_limit")
    public String userLimit() {
        saveUrl();
        return "/fim/company_card/managing/user_limit";
    }
}

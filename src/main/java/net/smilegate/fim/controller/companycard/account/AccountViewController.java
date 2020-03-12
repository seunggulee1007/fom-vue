package net.smilegate.fim.controller.companycard.account;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 
 * @author es-seungglee
 *
 */
@Controller
@RequestMapping("/company_card/account")
public class AccountViewController {
   
    /**
     * 
     * @return
     */
    @GetMapping("/account_info")
    public String accountInfo() {
        return "/fim/company_card/account/account_info";
    }
    
    /**
     * 
     * @return
     */
    @GetMapping("/cd_apply_form")
    public String cdApplyForm() {
        return "/fim/company_card/account/cd_apply_form";
    }
    
    /**
     * 
     * @return
     */
    @GetMapping("/change_limit")
    public String changeLimit() {
        return "/fim/company_card/account/change_limit";
    }
    
    /**
     * 
     * @return
     */
    @GetMapping("/com_cd_form")
    public String comCdForm() {
        return "/fim/company_card/account/com_cd_form";
    }
    
}
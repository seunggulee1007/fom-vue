package net.smilegate.fim.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CompanyCardViewController {
    
    @GetMapping("/company_card/account_info")
    public String accountInfo() {
        return "/fim/company_card/account_info";
    }
    
}

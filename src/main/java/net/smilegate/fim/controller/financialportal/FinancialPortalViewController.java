package net.smilegate.fim.controller.financialportal;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/fp")
public class FinancialPortalViewController {

    @GetMapping("/info")
    public String info() {
        return "/fim/financial_portal/info";
    }
    
    @GetMapping("/exchange")
    public String exchange() {
        return "/fim/financial_portal/exchange";
    }
    
}

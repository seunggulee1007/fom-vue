package net.smilegate.fim.controller.financiallink.accounting;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/financialLink/accounting")
public class AccountingViewCotroller {

    private final String prefix = "/fim/financialLink/accounting";
    
    @GetMapping("/standards")
    public String standards() {
        return prefix + "/standards";
    }
    
    @GetMapping("/standardsView")
    public String standardsView() {
        return prefix + "/standardsView";
    }
    
    @GetMapping("/standardsWrite")
    public String standardsWrite() {
        return prefix + "/standardsWrite";
    }
    
    
    
}

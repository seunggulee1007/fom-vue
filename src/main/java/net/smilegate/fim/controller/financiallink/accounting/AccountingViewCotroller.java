package net.smilegate.fim.controller.financiallink.accounting;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import net.smilegate.fim.controller.CommonController;

@Controller
@RequestMapping("/financialLink/accounting")
public class AccountingViewCotroller extends CommonController {

    private final String prefix = "/fim/financialLink/accounting";
    
    @GetMapping("/standards")
    public String standards() {
        saveUrl();
        return prefix + "/standards";
    }
    
    @GetMapping("/standardsView")
    public String standardsView() {
        saveUrl();
        return prefix + "/standardsView";
    }
    
    @GetMapping("/standardsWrite")
    public String standardsWrite() {
        saveUrl();
        return prefix + "/standardsWrite";
    }
    
    
    
}

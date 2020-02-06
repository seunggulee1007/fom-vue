package net.smilegate.fim.controller.busnp;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BusnpViewController {
    
    @GetMapping("/busnp/busnpInfo")
    public String testBusnpInfo() {
        return "/fim/busnp/busnpInfo";
    }
    
}

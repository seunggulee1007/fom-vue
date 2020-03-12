package net.smilegate.fim.controller.businessmanagement;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/business_management")
public class BusinessManagementViewController {
    
    /**
     * 비즈 카페
     * @return
     */
    @GetMapping("/cafe")
    public String cafe() {
        return "/fim/business_management/cafe";
    }
    
}

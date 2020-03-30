package net.smilegate.fim.controller.businessmanagement;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import net.smilegate.fim.controller.CommonController;

@Controller
@RequestMapping("/businessManagement")
public class BusinessManagementViewController extends CommonController {
    
    /**
     * 비즈 카페
     * @return
     */
    @GetMapping("/cafe")
    public String cafe() {
        saveUrl();
        return "/fim/businessManagement/cafe";
    }
    
}

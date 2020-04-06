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
    @GetMapping("/comLimit")
    public String comLimit() {
        saveUrl();
        return "/fim/companyCard/managing/comLimit";
    }
    
    /**
     * 
     * @return
     */
    @GetMapping("/limitManagement")
    public String limitManagement() {
        saveUrl();
        return "/fim/companyCard/managing/limitManagement";
    }
    
    /**
     * 
     * @return
     */
    @GetMapping("/listMail")
    public String listMail() {
        saveUrl();
        return "/fim/companyCard/managing/listMail";
    }
    
    /**
     * 
     * @return
     */
    @GetMapping("/sendMail")
    public String sendMail() {
        saveUrl();
        return "/fim/companyCard/managing/sendMail";
    }
    
    /**
     * 
     * @return
     */
    @GetMapping("/userLimit")
    public String userLimit() {
        saveUrl();
        return "/fim/companyCard/managing/userLimit";
    }
}

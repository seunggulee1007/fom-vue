package net.smilegate.fim.controller.mnginfo;

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
@RequestMapping("/mngInfo")
public class MngInfoViewController extends CommonController {
    
    private final String prefix = "/fim/mngInfo";
    /**
     * 
     * @return
     */
    @GetMapping("/mngCompany")
    public String mngCompany() {
        saveUrl();
        return prefix + "/mngCompany";
    }
    
    /**
     * 
     * @return
     */
    @GetMapping("/mngExecutives")
    public String mngExecutives() {
        saveUrl();
        return prefix + "/mngExecutives";
    }
    
    /**
     * 
     * @return
     */
    @GetMapping("/mngGroup")
    public String mngGroup() {
        saveUrl();
        return prefix + "/mngGroup";
    }
}

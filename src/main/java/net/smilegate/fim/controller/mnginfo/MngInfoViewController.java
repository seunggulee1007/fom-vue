package net.smilegate.fim.controller.mnginfo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 
 * @author es-seungglee
 *
 */
@Controller
@RequestMapping("/mngInfo")
public class MngInfoViewController {
    
    private final String prefix = "/fim/mngInfo";
    /**
     * 
     * @return
     */
    @GetMapping("/mngCompany")
    public String mngCompany() {
        return prefix + "/mngCompany";
    }
    
    /**
     * 
     * @return
     */
    @GetMapping("/mngExecutives")
    public String mngExecutives() {
        return prefix + "/mngExecutives";
    }
    
    /**
     * 
     * @return
     */
    @GetMapping("/mngGroup")
    public String mngGroup() {
        return prefix + "/mngGroup";
    }
}

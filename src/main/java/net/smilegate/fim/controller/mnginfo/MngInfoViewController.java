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
@RequestMapping("/mng_info")
public class MngInfoViewController {

    /**
     * 
     * @return
     */
    @GetMapping("/mng_company")
    public String mngCompany() {
        return "/fim/mng_info/mng_company";
    }
    
    /**
     * 
     * @return
     */
    @GetMapping("/mng_executives")
    public String mngExecutives() {
        return "/fim/mng_info/mng_executives";
    }
    
    /**
     * 
     * @return
     */
    @GetMapping("/mng_group")
    public String mngGroup() {
        return "/fim/mng_info/mng_group";
    }
}

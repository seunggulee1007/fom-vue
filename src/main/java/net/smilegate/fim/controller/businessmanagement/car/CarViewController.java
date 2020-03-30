package net.smilegate.fim.controller.businessmanagement.car;

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
@RequestMapping("/businessManagement/car")
public class CarViewController extends CommonController {

    private final String prefix = "/fim/businessManagement/car";
    /**
     * 
     * @return
     */
    @GetMapping("/carConfirm")
    public String carConfirm() {
        saveUrl();
        return prefix +"/carConfirm";
    }
    
    /**
     * 
     * @return
     */
    @GetMapping("/carCostNoDrive")
    public String carCostNoDrive() {
        saveUrl();
        return prefix+"/carCostNoDrive";
    }
    
    /**
     * 
     * @return
     */
    @GetMapping("/carCostSystem")
    public String carCostSystem() {
        saveUrl();
        return prefix + "/carCostSystem";
    }
    
    /**
     * 
     * @return
     */
    @GetMapping("/carCosting")
    public String carCosting() {
        saveUrl();
        return prefix + "/carCosting";
    }
    
    /**
     * 
     * @return
     */
    @GetMapping("/carDrive")
    public String carDrive() {
        saveUrl();
        return prefix + "/carDrive";
    }
    
    /**
     * 
     * @return
     */
    @GetMapping("/carList")
    public String carList() {
        saveUrl();
        return prefix + "/carList";
    }
}

package net.smilegate.fim.controller.businessmanagement.car;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 
 * @author es-seungglee
 *
 */
@Controller
@RequestMapping("/businessManagement/car")
public class CarViewController {

    private final String prefix = "/fim/businessManagement/car";
    /**
     * 
     * @return
     */
    @GetMapping("/carConfirm")
    public String carConfirm() {
        return prefix +"/carConfirm";
    }
    
    /**
     * 
     * @return
     */
    @GetMapping("/carCostNoDrive")
    public String carCostNoDrive() {
        return prefix+"/carCostNoDrive";
    }
    
    /**
     * 
     * @return
     */
    @GetMapping("/carCostSystem")
    public String carCostSystem() {
        return prefix + "/carCostSystem";
    }
    
    /**
     * 
     * @return
     */
    @GetMapping("/carCosting")
    public String carCosting() {
        return prefix + "/carCosting";
    }
    
    /**
     * 
     * @return
     */
    @GetMapping("/carDrive")
    public String carDrive() {
        return prefix + "/carDrive";
    }
    
    /**
     * 
     * @return
     */
    @GetMapping("/carList")
    public String carList() {
        return prefix + "/carList";
    }
}

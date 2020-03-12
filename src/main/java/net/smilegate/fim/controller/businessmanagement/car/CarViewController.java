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
@RequestMapping("/business_management/car")
public class CarViewController {

    /**
     * 
     * @return
     */
    @GetMapping("/car_confirm")
    public String carConfirm() {
        return "/fim/business_management/car/car_confirm";
    }
    
    /**
     * 
     * @return
     */
    @GetMapping("/car_cost_no_drive")
    public String carCostNoDrive() {
        return "/fim/business_management/car/car_cost_no_drive";
    }
    
    /**
     * 
     * @return
     */
    @GetMapping("/car_cost_system")
    public String carCostSystem() {
        return "/fim/business_management/car/car_cost_system";
    }
    
    /**
     * 
     * @return
     */
    @GetMapping("/car_costing")
    public String carCosting() {
        return "/fim/business_management/car/car_costing";
    }
    
    /**
     * 
     * @return
     */
    @GetMapping("/car_drive")
    public String carDrive() {
        return "/fim/business_management/car/car_drive";
    }
    
    /**
     * 
     * @return
     */
    @GetMapping("/car_list")
    public String carList() {
        return "/fim/business_management/car/car_list";
    }
}

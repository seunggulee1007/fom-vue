package net.smilegate.fim.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/em")
public class ExpenseManagementViewController {

    @GetMapping("/car/car_confirm")
    public String carConfirm() {
        return "/fim/expense_management/car/car_confirm";
    }
    
    @GetMapping("/car/car_cost_no_drive")
    public String carCostNoDrive() {
        return "/fim/expense_management/car/car_cost_no_drive";
    }
    
    @GetMapping("/car/car_cost_system")
    public String carCostSystem() {
        return "/fim/expense_management/car/car_cost_system";
    }
    
    @GetMapping("/car/car_costing")
    public String carCosting() {
        return "/fim/expense_management/car/car_costing";
    }
    
    @GetMapping("/car/car_drive")
    public String carDrive() {
        return "/fim/expense_management/car/car_drive";
    }
    
    @GetMapping("/car/car_list")
    public String carList() {
        return "/fim/expense_management/car/car_list";
    }
    
    @GetMapping("/community/club/club_financial_support")
    public String clubFinancialSupport() {
        return "/fim/expense_management/community/club/club_financial_support";
    }
    
    @GetMapping("/community/club/club_list")
    public String clubList() {
        return "/fim/expense_management/community/club/club_list";
    }
    
    @GetMapping("/community/club/club_registration")
    public String clubRegistration() {
        return "/fim/expense_management/community/club/club_registration";
    }
    
    @GetMapping("/em_list")
    public String emList() {
        return "/fim/expense_management/em_list";
    }
}

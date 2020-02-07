package net.smilegate.fim.controller.expensemanagement;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import io.swagger.annotations.ApiOperation;

@Controller
@RequestMapping("/em")
public class ExpenseManagementViewController {
    
    @ApiOperation(value="차량목록", notes="법인차 비용정산 -> 차량목록")
    @GetMapping("/car/car_list")
    public String carList() {
        return "/fim/expense_management/car/car_list";
    }
    
    @ApiOperation(value="차량운행일지", notes="법인차 비용정산 -> 차량운행일지")
    @GetMapping("/car/car_drive")
    public String carDrive() {
        return "/fim/expense_management/car/car_drive";
    }
    
    @ApiOperation(value="차량 비용귀속 확인", notes="법인차 비용정산 -> 차량 비용귀속 확인")
    @GetMapping("/car/car_confirm")
    public String carConfirm() {
        return "/fim/expense_management/car/car_confirm";
    }
    
    @ApiOperation(value="차량 비용산출", notes="법인차 비용정산 -> 차량 비용산출")
    @GetMapping("/car/car_costing")
    public String carCosting() {
        return "/fim/expense_management/car/car_costing";
    }
    
    @ApiOperation(value="업무용 승용차 명세서 확인", notes="법인차 비용정산 -> 업무용 승용차 명세서 확인")
    @GetMapping("/car/car_cost_system")
    public String carCostSystem() {
        return "/fim/expense_management/car/car_cost_system";
    }
    
    @ApiOperation(value="업무일지 미작성 차량비용", notes="법인차 비용정산 -> 업무일지 미작성 차량비용")
    @GetMapping("/car/car_cost_no_drive")
    public String carCostNoDrive() {
        return "/fim/expense_management/car/car_cost_no_drive";
    }
    
    @ApiOperation(value="스마일락(동호회)", notes="비용정산관리")
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

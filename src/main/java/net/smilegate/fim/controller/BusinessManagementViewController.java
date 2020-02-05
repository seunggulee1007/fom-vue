package net.smilegate.fim.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/bm")
public class BusinessManagementViewController {

    @GetMapping("/budget/detail_result")
    public String detailResult() {
        return "/fim/business_management/budget/detail_result";
    }
    
    @GetMapping("/budget/plan_result")
    public String planResult() {
        return "/fim/business_management/budget/plan_result";
    }
    
    @GetMapping("/eis/accumulation")
    public String accumulation() {
        return "/fim/business_management/eis/accumulation";
    }
    
    @GetMapping("/eis/current_pjt")
    public String currentPjt() {
        return "/fim/business_management/eis/current_pjt";
    }
    
    @GetMapping("/eis/current_profit")
    public String currentProfit() {
        return "/fim/business_management/eis/current_profit";
    }
    
    @GetMapping("/eis/monthly_report")
    public String monthlyReport() {
        return "/fim/business_management/eis/monthly_report";
    }
    
    @GetMapping("/eis/select_month_report")
    public String selectMonthReport() {
        return "/fim/business_management/eis/select_month_report";
    }
    
    @GetMapping("/work/all_mng")
    public String allMng() {
        return "/fim/business_management/work/all_mng";
    }
    
    @GetMapping("/work/belong_com")
    public String belongCom() {
        return "/fim/business_management/work/belong_com";
    }
    
    @GetMapping("/work/dept_mng")
    public String deptMng() {
        return "/fim/business_management/work/dept_mng";
    }
    
    @GetMapping("/work/dept_ratio")
    public String deptRatio() {
        return "/fim/business_management/work/dept_ratio";
    }
    
    @GetMapping("/work/pjt_mm")
    public String pjtMm() {
        return "/fim/business_management/work/pjt_mm";
    }
    
    @GetMapping("/work/user_ratio")
    public String userRatio() {
        return "/fim/business_management/work/user_ratio";
    }
    
    @GetMapping("/work/user_schedule")
    public String userSchedule() {
        return "/fim/business_management/work/user_schedule";
    }
    
    @GetMapping("/work/work_history")
    public String workHistory() {
        return "/fim/business_management/work/work_history";
    }
    
    
    
}

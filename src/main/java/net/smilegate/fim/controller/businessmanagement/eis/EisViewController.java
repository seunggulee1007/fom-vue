package net.smilegate.fim.controller.businessmanagement.eis;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/business_management/eis")
public class EisViewController {
    /**
     * 프로젝트 손익조회 -> 당월손익
     * @return
     */
    @GetMapping("/select_month_report")
    public String selectMonthReport() {
        return "/fim/business_management/eis/select_month_report";
    }
    
    /**
     * 프로젝트 손익조회 -> 월별손익
     * @return
     */
    @GetMapping("/monthly_report")
    public String monthlyReport() {
        return "/fim/business_management/eis/monthly_report";
    }
    
    /**
     * 프로젝트 손익조회 -> 누적손익
     * @return
     */
    @GetMapping("/accumulation")
    public String accumulation() {
        return "/fim/business_management/eis/accumulation";
    }
    
    /**
     * 프로젝트 손익조회 -> 프로젝트 현황
     * @return
     */
    @GetMapping("/current_pjt")
    public String currentPjt() {
        return "/fim/business_management/eis/current_pjt";
    }
    
    /**
     * 프로젝트 손익조회 -> 손익현황
     * @return
     */
    @GetMapping("/current_profit")
    public String currentProfit() {
        return "/fim/business_management/eis/current_profit";
    }
    
}

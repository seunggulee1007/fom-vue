package net.smilegate.fim.controller.businessmanagement.eis;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import net.smilegate.fim.controller.CommonController;

@Controller
@RequestMapping("/businessManagement/eis")
public class EisViewController extends CommonController {
    
    private final String prefix = "/fim/businessManagement/eis";
    
    /**
     * 프로젝트 손익조회 -> 당월손익
     * @return
     */
    @GetMapping("/selectMonthReport")
    public String selectMonthReport() {
        saveUrl();
        return prefix + "/selectMonthReport";
    }
    
    /**
     * 프로젝트 손익조회 -> 월별손익
     * @return
     */
    @GetMapping("/monthlyReport")
    public String monthlyReport() {
        saveUrl();
        return prefix + "/monthlyReport";
    }
    
    /**
     * 프로젝트 손익조회 -> 누적손익
     * @return
     */
    @GetMapping("/accumulation")
    public String accumulation() {
        saveUrl();
        return prefix + "/accumulation";
    }
    
    /**
     * 프로젝트 손익조회 -> 프로젝트 현황
     * @return
     */
    @GetMapping("/currentPjt")
    public String currentPjt() {
        saveUrl();
        return prefix + "/currentPjt";
    }
    
    /**
     * 프로젝트 손익조회 -> 손익현황
     * @return
     */
    @GetMapping("/currentProfit")
    public String currentProfit() {
        saveUrl();
        return prefix + "/currentProfit";
    }
    
}

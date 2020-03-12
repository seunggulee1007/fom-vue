package net.smilegate.fim.controller.businessmanagement.budget;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 
 * @author es-seungglee
 *
 */
@Controller
@RequestMapping("/business_management/budget")
public class BudgetViewController {
    
    /**
    * 비용계획/실적조회 -> 실적 상세내역
    * @return
    */
    @GetMapping("/detail_result")
    public String detailResult() {
        return "/fim/business_management/budget/detail_result";
    }
    
    /**
     * 비용계획/실적조회 -> 계획대비 실적
     * @return
     */
    @GetMapping("/plan_result")
    public String planResult() {
        return "/fim/business_management/budget/plan_result";
    }
    
}

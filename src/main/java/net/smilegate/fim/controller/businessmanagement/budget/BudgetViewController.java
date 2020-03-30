package net.smilegate.fim.controller.businessmanagement.budget;

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
@RequestMapping("/businessManagement/budget")
public class BudgetViewController extends CommonController {
    
    private final String prefix = "/fim/businessManagement/budget";
    /**
    * 비용계획/실적조회 -> 실적 상세내역
    * @return
    */
    @GetMapping("/detailResult")
    public String detailResult() {
        saveUrl();
        return prefix+"/detailResult";
    }
    
    /**
     * 비용계획/실적조회 -> 계획대비 실적
     * @return
     */
    @GetMapping("/planResult")
    public String planResult() {
        saveUrl();
        return prefix + "/planResult";
    }
    
}

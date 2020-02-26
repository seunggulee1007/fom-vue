package net.smilegate.fim.controller.financiallink;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @apiNote 재무포털 관리 화면 컨트롤러
 * @since 2020.02.10
 * @author es-seungglee
 *
 */
@Controller
@RequestMapping("/financial_link")
public class FinancialLinkViewController {
    
    /**
     * 국세청 월별 정산내역 조회 화면
     * @return
     */
    @GetMapping("/tax_schedule")
    public String info() {
        return "/fim/financial_link/tax_schedule";
    }
    
    @GetMapping("/exchange")
    public String exchange() {
        return "/fim/financial_link/exchange";
    }
    
    @GetMapping("/biz_chk/biz_num")
    public String bizNum() {
        return "/fim/financial_link/biz_chk/biz_num";
    }
    
    @GetMapping("/biz_chk/biz_chk_history")
    public String bizChkHistory() {
        return "/fim/financial_link/biz_chk/biz_chk_history";
    }
    
}

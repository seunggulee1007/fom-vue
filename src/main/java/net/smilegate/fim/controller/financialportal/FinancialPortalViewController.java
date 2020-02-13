package net.smilegate.fim.controller.financialportal;

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
@RequestMapping("/fp")
public class FinancialPortalViewController {
    
    /**
     * 재무회계 공지사항 게시판
     * @return
     */
    @GetMapping("/info")
    public String info() {
        return "/fim/financial_portal/info";
    }
    
    /**
     * 국세청 월별 정산내역 조회 화면
     * @return
     */
    @GetMapping(value="/tax_schedule")
    public String taxPlanMonth() {
        return "/fim/financial_portal/taxPlanMonth";
    }
    
    /**
     * 환율정보 조회 페이지
     * @return
     */
    @GetMapping("/exchange")
    public String exchange() {
        return "/fim/financial_portal/exchange";
    }
    
}

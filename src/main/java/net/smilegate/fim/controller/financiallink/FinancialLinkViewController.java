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
@RequestMapping("/financialLink")
public class FinancialLinkViewController {
    
    private final String prefix = "/fim/financialLink";
    
    /**
     * 국세청 월별 정산내역 조회 화면
     * @return
     */
    @GetMapping("/taxSchedule")
    public String taxSchedule() {
        return prefix + "/taxSchedule";
    }
    
    /**
     * 환율 페이지
     * @return
     */
    @GetMapping("/exchange")
    public String exchange() {
        return prefix + "/exchange";
    }
    
}

package net.smilegate.fim.controller.companycard;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * @apiNote 법인카드 비용관리 화면 컨트롤러
 * @author es-seungglee
 *
 */
@Controller
public class CompanyCardViewController {
    
    /**
     * 카드신청/정산 처리 -> 법인카드 정산
     * @return
     */
    @GetMapping("/company_card/account_info")
    public String accountInfo() {
        return "/fim/company_card/account_info";
    }
    
}

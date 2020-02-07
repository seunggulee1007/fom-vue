package net.smilegate.fim.controller.companycard;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import io.swagger.annotations.ApiOperation;

@Controller
public class CompanyCardViewController {
    
    @ApiOperation(value="법인카드 정산", notes="카드신청/정산 처리 -> 법인카드 정산")
    @GetMapping("/company_card/account_info")
    public String accountInfo() {
        return "/fim/company_card/account_info";
    }
    
}

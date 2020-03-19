package net.smilegate.fim.controller.financiallink.bizChk;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 
 * @author es-seungglee
 *
 */
@Controller
@RequestMapping("/financial_link/biz_chk")
public class BizChkViewController {

    /**
     * 사업자 번호로 휴폐업 상태 조회하는 페이지 
     * @return
     */
    @GetMapping("/biz_num")
    public String bizNum() {
        return "/fim/financial_link/biz_chk/biz_num";
    }
    
    /**
     * 휴폐업 조회 이력 조회하는 페이지
     * @return
     */
    @GetMapping("/biz_chk_history")
    public String bizChkHistory() {
        return "/fim/financial_link/biz_chk/biz_chk_history";
    }
    
}

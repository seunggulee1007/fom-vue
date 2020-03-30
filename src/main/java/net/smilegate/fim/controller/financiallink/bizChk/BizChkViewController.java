package net.smilegate.fim.controller.financiallink.bizChk;

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
@RequestMapping("/financialLink/bizChk")
public class BizChkViewController extends CommonController {

    private final String prefix = "/fim/financialLink/bizChk";
    
    /**
     * 사업자 번호로 휴폐업 상태 조회하는 페이지 
     * @return
     */
    @GetMapping("/bizNum")
    public String bizNum() {
        saveUrl();
        return prefix + "/bizNum";
    }
    
    /**
     * 휴폐업 조회 이력 조회하는 페이지
     * @return
     */
    @GetMapping("/bizChkHistory")
    public String bizChkHistory() {
        saveUrl();
        return prefix + "/bizChkHistory";
    }
    
}

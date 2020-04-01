package net.smilegate.fim.controller.common;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 공통 적으로 사용되는 view용 컨트롤러
 * @author es-seungglee
 *
 */
@Controller
@RequestMapping("/common")
public class CommonViewController {
    
    /**
     * 사용자 선택 팝업
     * @return
     */
    @GetMapping("/userPopup")
    public String userPopup() {
        return "/fim/popup/userPopup";
    }
    
    /**
     * 비용항목 및 Activity선택 화면
     * @return
     */
    @GetMapping("/expenseItemAllPopup")
    public String expenseItemAllPopup() {
        return "/fim/popup/expenseItemAllPopup";
    }
    
    @GetMapping("/expenseItemSgmaPopup")
    public String expenseItemSgmaPopup() {
        return "/fim/popup/expenseItemSgmaPopup";
    }
    
    @GetMapping("/expenseDetailPopup")
    public String expenseDetailPopup() {
        return "/fim/popup/expenseDetailPopup";
    }
    
}

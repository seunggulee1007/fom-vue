package net.smilegate.fim.controller.portalmanagement;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 포털 관리 view 용 컨트롤러
 * @author es-seungglee
 *
 */
@Controller
@RequestMapping("/portal_management")
public class PortalManagementViewController {

    /**
     * 게시판 페이지
     * @return
     */
    @GetMapping("/info")
    public String info() {
        return "/fim/portal_management/info";
    }
    
    /**
     * 게시판 등록 페이지
     * @return
     */
    @GetMapping("/info_write")
    public String infoWrite() {
        return "/fim/portal_management/info_write";
    }
    
}

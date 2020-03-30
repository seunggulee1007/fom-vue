package net.smilegate.fim.controller.portalmanagement;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import net.smilegate.fim.controller.CommonController;

/**
 * 포털 관리 view 용 컨트롤러
 * @author es-seungglee
 *
 */
@Controller
@RequestMapping("/portalManagement")
public class PortalManagementViewController extends CommonController {

    private final String prefix = "/fim/portalManagement";
    /**
     * 게시판 페이지
     * @return
     */
    @GetMapping("/info")
    public String info() {
        saveUrl();
        return prefix + "/info";
    }
    
    /**
     * 게시판 등록 페이지
     * @return
     */
    @GetMapping("/infoWrite")
    public String infoWrite() {
        saveUrl();
        return prefix + "/infoWrite";
    }
    
    @GetMapping("/infoView")
    public String infoView() {
        saveUrl();
        return prefix + "/infoView";
    }
    
    @GetMapping("/approvalPending")
    public String approvalPending() {
        saveUrl();
        return prefix + "/approvalPending";
    }
    
    @GetMapping("/approvalPre")
    public String approvalPre() {
        saveUrl();
        return prefix + "/approvalPre";
    }
    
    @GetMapping("/approvalProgress")
    public String approvalProgress() {
        saveUrl();
        return prefix + "/approvalProgress";
    }
    
}

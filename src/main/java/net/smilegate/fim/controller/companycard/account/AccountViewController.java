package net.smilegate.fim.controller.companycard.account;

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
@RequestMapping("/companyCard/account")
public class AccountViewController extends CommonController {

    private final String prefix = "/fim/companyCard/account";
    /**
     *
     * @return
     */
    @GetMapping("/accountInfo")
    public String accountInfo() {
        saveUrl();
        return prefix + "/accountInfo";
    }

    /**
     *
     * @return
     */
    @GetMapping("/cdApplyForm")
    public String cdApplyForm() {
        saveUrl();
        return prefix + "/cdApplyForm";
    }

    /**
     *
     * @return
     */
    @GetMapping("/changeLimit")
    public String changeLimit() {
        saveUrl();
        return prefix + "/changeLimit";
    }

    /**
     *
     * @return
     */
    @GetMapping("/comCdForm")
    public String comCdForm() {
        saveUrl();
        return prefix + "/comCdForm";
    }

}
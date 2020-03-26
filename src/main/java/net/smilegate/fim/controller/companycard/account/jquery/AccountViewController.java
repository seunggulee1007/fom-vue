package net.smilegate.fim.controller.companycard.account.jquery;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author es-seungglee
 *
 */
//@Controller
@RequestMapping("/companyCard/account")
public class AccountViewController {

    private final String prefix = "/fim/companyCard/account";
    /**
     *
     * @return
     */
    @RequestMapping("/accountInfo")
    public String accountInfo() {
        return prefix + "/accountInfo";
    }

    /**
     *
     * @return
     */
    @GetMapping("/cdApplyForm")
    public String cdApplyForm() {
        return prefix + "/cdApplyForm";
    }

    /**
     *
     * @return
     */
    @GetMapping("/changeLimit")
    public String changeLimit() {
        return prefix + "/changeLimit";
    }

    /**
     *
     * @return
     */
    @GetMapping("/comCdForm")
    public String comCdForm() {
        return prefix + "/comCdForm";
    }

}
package net.smilegate.fim.controller.expensemanagement.approval;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/expenseManagement/approval")
public class ApprovalViewController {
    
    private String preFix ="/fim/expenseManagement/approval";
    
    /**
     * 기안서
     * @return
     */
    @GetMapping("/approvalForm")
    public String approvalForm() {
        return preFix+"/approvalForm";
    }
    
    /**
     * 기안서(보고)
     * @return
     */
    @GetMapping("/approvalReport")
    public String approvalReport() {
        return preFix + "/approvalReport";
    }
    
    /**
     * 예산변경신청 페이지
     * @return
     */
    @GetMapping("/budgetChange")
    public String budgetCahnge() {
        return preFix + "/budgetChange";
    }
    
    /**
     * 지출결의서 조회 페이지
     * @return
     */
    @GetMapping("/expenseHistory")
    public String expenseHistory() {
        return preFix + "/expenseHistory";
    }
    
    /**
     * 지출결의서 작성
     * @return
     */
    @GetMapping("/expense")
    public String expense() {
        return preFix + "/expense";
    }
    
}

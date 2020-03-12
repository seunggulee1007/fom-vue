package net.smilegate.fim.controller.businessmanagement.work;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/business/management/work")
public class WorkViewController {
    /**
     * 업무 투입율 -> 부서/프로젝트 관리
     * @return
     */
    @GetMapping("/dept_mng")
    public String deptMng() {
        return "/fim/business_management/work/dept_mng";
    }
    
    /**
     * 업무 투입율 -> 전체투입률 관리
     * @return
     */
    @GetMapping("//all_mng")
    public String allMng() {
        return "/fim/business_management/work/all_mng";
    }
    
    /**
     * 업무 투입율 -> 작업내역 관리
     * @return
     */
    @GetMapping("/work_history")
    public String workHistory() {
        return "/fim/business_management/work/work_history";
    }
    
    /**
     * 업무 투입율 -> 귀속법인별 MM 집계
     * @return
     */
    @GetMapping("/belong_com")
    public String belongCom() {
        return "/fim/business_management/work/belong_com";
    }
    
    /**
     * 업무 투입율 -> 프로젝트별 MM 추이분석
     * @return
     */
    @GetMapping("/pjt_mm")
    public String pjtMm() {
        return "/fim/business_management/work/pjt_mm";
    }
    
    /**
     * 업무 투입율 -> 업무투입시간
     * @return
     */
    @GetMapping("/user_schedule")
    public String userSchedule() {
        return "/fim/business_management/work/user_schedule";
    }
    
    /**
     * 업무 투입율 -> 나의 투입률 관리
     * @return
     */
    @GetMapping("/user_ratio")
    public String userRatio() {
        return "/fim/business_management/work/user_ratio";
    }
    
    /**
     * 
     * @return
     */
    @GetMapping("/dept_ratio")
    public String deptRatio() {
        return "/fim/business_management/work/dept_ratio";
    }
    
}

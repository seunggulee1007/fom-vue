package net.smilegate.fim.controller.businessmanagement.work;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/businessManagement/work")
public class WorkViewController {
    
    private final String prefix = "/fim/businessManagement/work";
    /**
     * 업무 투입율 -> 부서/프로젝트 관리
     * @return
     */
    @GetMapping("/deptMng")
    public String deptMng() {
        return prefix + "/deptMng";
    }
    
    /**
     * 업무 투입율 -> 전체투입률 관리
     * @return
     */
    @GetMapping("/allMng")
    public String allMng() {
        return prefix + "/allMng";
    }
    
    /**
     * 업무 투입율 -> 작업내역 관리
     * @return
     */
    @GetMapping("/workHistory")
    public String workHistory() {
        return prefix + "/workHistory";
    }
    
    /**
     * 업무 투입율 -> 귀속법인별 MM 집계
     * @return
     */
    @GetMapping("/belongCom")
    public String belongCom() {
        return prefix + "/belongCom";
    }
    
    /**
     * 업무 투입율 -> 프로젝트별 MM 추이분석
     * @return
     */
    @GetMapping("/pjtMm")
    public String pjtMm() {
        return prefix + "/pjtMm";
    }
    
    /**
     * 업무 투입율 -> 업무투입시간
     * @return
     */
    @GetMapping("/userSchedule")
    public String userSchedule() {
        return prefix + "/userSchedule";
    }
    
    /**
     * 업무 투입율 -> 나의 투입률 관리
     * @return
     */
    @GetMapping("/userRatio")
    public String userRatio() {
        return prefix + "/userRatio";
    }
    
    /**
     * 
     * @return
     */
    @GetMapping("/deptRatio")
    public String deptRatio() {
        return prefix + "/deptRatio";
    }
    
}

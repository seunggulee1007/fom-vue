package net.smilegate.fim.controller.businessmanagement;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/bm")
public class BusinessManagementViewController {
    
    /**
     * 비즈 카페
     * @return
     */
    @GetMapping("/cafe")
    public String cafe() {
        return "/fim/business_management/cafe";
    }
    
    /**
     * 프로젝트 손익조회 -> 당월손익
     * @return
     */
    @GetMapping("/eis/select_month_report")
    public String selectMonthReport() {
        return "/fim/business_management/eis/select_month_report";
    }
    
    /**
     * 프로젝트 손익조회 -> 월별손익
     * @return
     */
    @GetMapping("/eis/monthly_report")
    public String monthlyReport() {
        return "/fim/business_management/eis/monthly_report";
    }
    
    /**
     * 프로젝트 손익조회 -> 누적손익
     * @return
     */
    @GetMapping("/eis/accumulation")
    public String accumulation() {
        return "/fim/business_management/eis/accumulation";
    }
    
    /**
     * 프로젝트 손익조회 -> 프로젝트 현황
     * @return
     */
    @GetMapping("/eis/current_pjt")
    public String currentPjt() {
        return "/fim/business_management/eis/current_pjt";
    }
    
    /**
     * 프로젝트 손익조회 -> 손익현황
     * @return
     */
    @GetMapping("/eis/current_profit")
    public String currentProfit() {
        return "/fim/business_management/eis/current_profit";
    }
    
    /**
     * 비용계획/실적조회 -> 실적 상세내역
     * @return
     */
    @GetMapping("/budget/detail_result")
    public String detailResult() {
        return "/fim/business_management/budget/detail_result";
    }
    
    /**
     * 비용계획/실적조회 -> 계획대비 실적
     * @return
     */
    @GetMapping("/budget/plan_result")
    public String planResult() {
        return "/fim/business_management/budget/plan_result";
    }
    
    /**
     * 업무 투입율 -> 부서/프로젝트 관리
     * @return
     */
    @GetMapping("/work/dept_mng")
    public String deptMng() {
        return "/fim/business_management/work/dept_mng";
    }
    
    /**
     * 업무 투입율 -> 전체투입률 관리
     * @return
     */
    @GetMapping("/work/all_mng")
    public String allMng() {
        return "/fim/business_management/work/all_mng";
    }
    
    /**
     * 업무 투입율 -> 작업내역 관리
     * @return
     */
    @GetMapping("/work/work_history")
    public String workHistory() {
        return "/fim/business_management/work/work_history";
    }
    
    /**
     * 업무 투입율 -> 귀속법인별 MM 집계
     * @return
     */
    @GetMapping("/work/belong_com")
    public String belongCom() {
        return "/fim/business_management/work/belong_com";
    }
    
    /**
     * 업무 투입율 -> 프로젝트별 MM 추이분석
     * @return
     */
    @GetMapping("/work/pjt_mm")
    public String pjtMm() {
        return "/fim/business_management/work/pjt_mm";
    }
    
    /**
     * 업무 투입율 -> 업무투입시간
     * @return
     */
    @GetMapping("/work/user_schedule")
    public String userSchedule() {
        return "/fim/business_management/work/user_schedule";
    }
    
    /**
     * 업무 투입율 -> 나의 투입률 관리
     * @return
     */
    @GetMapping("/work/user_ratio")
    public String userRatio() {
        return "/fim/business_management/work/user_ratio";
    }
    
    /**
     * 
     * @return
     */
    @GetMapping("/work/dept_ratio")
    public String deptRatio() {
        return "/fim/business_management/work/dept_ratio";
    }
    
    /**
     * 넘겨진 사업자번호로 등록상태 조회하는 화면
     * @return
     */
    @GetMapping("/biz/bizInfo")
    public String testBusnpInfo() {
        return "/fim/business_management/biz/bizInfo";
    }
    
}

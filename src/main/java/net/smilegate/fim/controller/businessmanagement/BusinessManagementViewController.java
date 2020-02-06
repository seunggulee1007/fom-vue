package net.smilegate.fim.controller.businessmanagement;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import io.swagger.annotations.ApiOperation;

@Controller
@RequestMapping("/bm")
public class BusinessManagementViewController {

    @ApiOperation(value="당월손익", notes="프로젝트 손익조회 -> 당월손익")
    @GetMapping("/eis/select_month_report")
    public String selectMonthReport() {
        return "/fim/business_management/eis/select_month_report";
    }
    
    @ApiOperation(value="월별손익", notes="프로젝트 손익조회 -> 월별손익")
    @GetMapping("/eis/monthly_report")
    public String monthlyReport() {
        return "/fim/business_management/eis/monthly_report";
    }
    
    @ApiOperation(value="누적손익", notes="프로젝트 손익조회 -> 누적손익")
    @GetMapping("/eis/accumulation")
    public String accumulation() {
        return "/fim/business_management/eis/accumulation";
    }
    
    @ApiOperation(value="프로젝트 현황", notes="프로젝트 손익조회 -> 프로젝트 현황")
    @GetMapping("/eis/current_pjt")
    public String currentPjt() {
        return "/fim/business_management/eis/current_pjt";
    }
    
    @ApiOperation(value="손익 현황", notes="프로젝트 손익조회 -> 손익현황")
    @GetMapping("/eis/current_profit")
    public String currentProfit() {
        return "/fim/business_management/eis/current_profit";
    }
    
    @ApiOperation(value="실적상세 내역", notes="비용계획/실적조회 -> 실적 상세내역")
    @GetMapping("/budget/detail_result")
    public String detailResult() {
        return "/fim/business_management/budget/detail_result";
    }
    
    @ApiOperation(value="계획대비 실적", notes="비용계획/실적조회 -> 계획대비 실적")
    @GetMapping("/budget/plan_result")
    public String planResult() {
        return "/fim/business_management/budget/plan_result";
    }
    
    @ApiOperation(value="부서/프로젝트 관리", notes="업무 투입율 -> 부서/프로젝트 관리")
    @GetMapping("/work/dept_mng")
    public String deptMng() {
        return "/fim/business_management/work/dept_mng";
    }
    
    @ApiOperation(value="전체 투입률 관리", notes="업무 투입율 -> 전체투입률 관리")
    @GetMapping("/work/all_mng")
    public String allMng() {
        return "/fim/business_management/work/all_mng";
    }
    
    @ApiOperation(value="작업내역 관리", notes="업무 투입율 -> 작업내역 관리")
    @GetMapping("/work/work_history")
    public String workHistory() {
        return "/fim/business_management/work/work_history";
    }
    
    @ApiOperation(value="귀속법인별MM집계", notes="업무 투입율 -> 귀속법인별 MM 집계")
    @GetMapping("/work/belong_com")
    public String belongCom() {
        return "/fim/business_management/work/belong_com";
    }
    
    @ApiOperation(value="프로젝트별 MM 추이분석", notes="업무 투입율 -> 프로젝트별 MM 추이분석")
    @GetMapping("/work/pjt_mm")
    public String pjtMm() {
        return "/fim/business_management/work/pjt_mm";
    }
    
    @ApiOperation(value="업무 투입 시간", notes="업무 투입율 -> 업무투입시간")
    @GetMapping("/work/user_schedule")
    public String userSchedule() {
        return "/fim/business_management/work/user_schedule";
    }
    
    @ApiOperation(value="나의 투입률 관리", notes="업무 투입율 -> 나의 투입률 관리")
    @GetMapping("/work/user_ratio")
    public String userRatio() {
        return "/fim/business_management/work/user_ratio";
    }
    
    @ApiOperation(value="")
    @GetMapping("/work/dept_ratio")
    public String deptRatio() {
        return "/fim/business_management/work/dept_ratio";
    }
    
}

package net.smilegate.fim.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import io.swagger.annotations.ApiOperation;

@Controller
public class TaxPlanViewController {

    @ApiOperation(value="월별 정산내역 조회", notes="국세청 월별 정산내역 조회 화면")
    @GetMapping(value="/fp/tax_schedule")
    public String taxPlanMonth() {
        return "/fim/taxPlan/taxPlanMonth";
    }
    
}

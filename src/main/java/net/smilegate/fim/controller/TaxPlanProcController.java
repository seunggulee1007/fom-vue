package net.smilegate.fim.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import io.swagger.annotations.ApiOperation;
import net.smilegate.fim.mappers.my.TaxScheduleMapper;

@RestController
public class TaxPlanProcController {
    
    
    @Autowired 
    private TaxScheduleMapper taxScheduleMapper;
    
    @ApiOperation(value="세무일정 전체 조회", notes="홈텍스에서 스크래핑 한 세무일정 전체 조회하는 api")
    @GetMapping("/taxPlan/taxPlanMonth")
    public List<Map<String, Object>> selectAccountMonth() {
        List<Map<String, Object>> map = new ArrayList<>();
        
        map = taxScheduleMapper.selectTaxSchedule();
        
        return map;
    }
    
}

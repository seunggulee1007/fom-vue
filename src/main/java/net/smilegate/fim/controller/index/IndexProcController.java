package net.smilegate.fim.controller.index;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import net.smilegate.fim.service.exerp.ExerpService;
import net.smilegate.fim.service.taxplan.TaxPlanService;

@RestController
public class IndexProcController {
    @Autowired
    private ExerpService exerpService;
    @Autowired
    private TaxPlanService taxPlanService;
    
    @GetMapping("/index/getInitData")
    public Map<String, Object> getInitData() {
        Map<String, Object> map = new HashMap<>();
        try {
            Map<String, String> reqMap= new HashMap<>();
            reqMap.put("indexYn", "Y");
            map.putAll(exerpService.selectExRate(reqMap));
            map.putAll(taxPlanService.getTaxPlan());
        }catch (Exception e ) {
            e.printStackTrace();
        }
        return map;
    }
}

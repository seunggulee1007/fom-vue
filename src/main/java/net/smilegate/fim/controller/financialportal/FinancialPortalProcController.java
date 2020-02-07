package net.smilegate.fim.controller.financialportal;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import io.swagger.annotations.ApiOperation;
import net.smilegate.fim.service.exerp.ExerpService;

@RestController
@RequestMapping("/fp")
public class FinancialPortalProcController {

    @Autowired
    private ExerpService exerpService;
    
    @GetMapping("/exRate")
    public Map<String, Object> getExRate(Map<String, String> reqMap) {
        Map<String, Object> map = new HashMap<>();
        map = exerpService.selectExRate(reqMap);
        return map;
    }
    
    @ApiOperation(value="환율 조회", notes="환율 조회 api")
    @GetMapping("/exRate/{search}")
    public Map<String, Object> exRate(@PathVariable("search") String search) {
        Map<String, String> reqMap = new HashMap<>();
        reqMap.put("search", search);
        return getExRate(reqMap);
    }
    
}

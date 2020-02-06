package net.smilegate.fim.controller.financialportal;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import io.swagger.annotations.ApiOperation;
import net.smilegate.fim.service.exerp.ExerpService;

@RestController
public class FinancialPortalProcController {

    @Autowired
    private ExerpService exerpService;
    
    @ApiOperation(value="환율 조회", notes="환율 조회 api")
    @GetMapping("/fp/exRate")
    public Map<String, Object> exRate(Map<String, String> reqMap) {
        Map<String, Object> map = new HashMap<>();
        map = exerpService.selectExRate(reqMap);
        return map;
    }
}

package net.smilegate.fim.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import net.smilegate.fim.service.hometax.HomeTaxService;

@RestController
public class BusnpProcController {

    @Autowired
    private HomeTaxService homeTaxService;
    
    @ApiOperation(value="사업자 휴폐업 조회", notes="넘겨진 사업자 번호로 휴폐업 여부를 조회하는 api")
    @ApiImplicitParams({
        @ApiImplicitParam(name="busnpNo", value="사업자번호", required = true, dataType="string", defaultValue = "214-86-08930")
    })
    @PostMapping("/busnp/busnpInfo")
    public Map<String, Object> getBusnpInfo(String busnpNo) {
        Map<String, Object> map = new HashMap<String, Object>();
        
        try {
            map = homeTaxService.getBusnpInfo(busnpNo);
        }catch (Exception e) {
            e.printStackTrace();
        }
        
        return map;
    }
    
    @ApiOperation(value="사업자 휴폐업 조회 내역", notes="사업자 휴폐업 조회했던 내역 리스트 조회하는 api")
    @GetMapping("/busnp/busnpList")
    public Map<String, Object> getBusnpList() {
        Map<String, Object> map = new HashMap<String, Object>();
        try {
            map = homeTaxService.getBusnpList();
        }catch (Exception e) {
            e.printStackTrace();
        }
        return map;
    }
    
}

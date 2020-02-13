package net.smilegate.fim.controller.businessmanagement;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import lombok.RequiredArgsConstructor;
import net.smilegate.fim.service.hometax.HomeTaxService;
import net.smilegate.fim.vo.CommonResultVO;

@RequiredArgsConstructor
@RestController
@RequestMapping("/bm")
public class BusinessManagementProcController {

    private final HomeTaxService homeTaxService;
    
    @ApiOperation(value="사업자 휴폐업 조회", notes="넘겨진 사업자 번호로 휴폐업 여부를 조회하는 api")
    @ApiImplicitParams({
        @ApiImplicitParam(name="busnpNo", value="사업자번호", required = true, dataType="string", defaultValue = "214-86-08930")
        ,@ApiImplicitParam(name="serverName", value="요청 서버 명", required = true, dataType="string", defaultValue = "fim")
    })
    @GetMapping("/busnp/busnpInfo/{serverName}/{busnpNo}")
    public CommonResultVO getBusnpInfo(@PathVariable("serverName") String serverName, @PathVariable("busnpNo") String busnpNo) {        
        
        CommonResultVO commonResultVO = homeTaxService.getBusnpInfo(serverName, busnpNo);
        
        return commonResultVO;
    }
    
}

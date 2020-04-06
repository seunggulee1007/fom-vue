package net.smilegate.fim.controller.financiallink.bizChk;

import java.util.HashMap;
import java.util.Map;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import lombok.RequiredArgsConstructor;
import net.smilegate.fim.service.biz.BizService;
import net.smilegate.fim.vo.BizVO;
import net.smilegate.fim.vo.common.CommonResultVO;
import net.smilegate.fim.vo.common.PagingVO;

@RequiredArgsConstructor
@RestController
@RequestMapping("/financialLink")
public class BizChkProcController {

    private final BizService bizService;

    /**
     * 사업자 휴폐업 조회
     * 
     * @param serverName
     * @param bizNo
     * @return
     */
    @ApiOperation(value = "사업자 휴폐업 조회", notes = "넘겨진 사업자 번호로 휴폐업 여부를 조회하는 api")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "bizNo", value = "사업자번호", required = true, dataType = "string", defaultValue = "214-86-08930"),
            @ApiImplicitParam(name = "serverName", value = "요청 서버 명", required = true, dataType = "string", defaultValue = "fim") })
    @GetMapping("/biz/bizInfo")
    public CommonResultVO getBizInfo(String serverName, String bizNo) {
        Map<String, Object> map = new HashMap<>();
        map = bizService.getBizInfo(serverName, bizNo);
        CommonResultVO commonResultVO = CommonResultVO.builder().resultMsg((String) map.get("trtCntn")).data(map)
                .build();
        return commonResultVO;
    }

    @ApiOperation(value = "사업자 휴폐업 조회 이력", notes = "사업자 휴폐업 조회한 이력을 조회")
    @GetMapping("/biz/bizInfo/bizInfoList")
    public CommonResultVO bizInfoList(PagingVO pagingVO, BizVO bizVO) {
        Map<String, Object> map = new HashMap<>();
        map = bizService.selectBuzInfoList(pagingVO, bizVO);
        CommonResultVO commonResultVO = CommonResultVO.builder().data(map).build();
        return commonResultVO;
    }
    
}

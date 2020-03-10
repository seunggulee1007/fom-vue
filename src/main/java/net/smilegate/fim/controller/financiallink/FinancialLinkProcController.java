package net.smilegate.fim.controller.financiallink;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import lombok.RequiredArgsConstructor;
import net.smilegate.fim.enums.Currency;
import net.smilegate.fim.enums.EnumMapperValue;
import net.smilegate.fim.mappers.fim.TaxScheduleMapper;
import net.smilegate.fim.service.biz.BizService;
import net.smilegate.fim.service.exerp.ExerpService;
import net.smilegate.fim.vo.BizVO;
import net.smilegate.fim.vo.CommonResultVO;
import net.smilegate.fim.vo.TaxScheduleVO;

/**
 * 재무포털 관리 처리용 컨트롤러
 * @since 2020.02.10
 * @author es-seungglee
 *
 */
@RequiredArgsConstructor
@RestController
@RequestMapping("/financial_link")
public class FinancialLinkProcController {
    
    private final BizService bizService;
    private final ExerpService exerpService;
    private final TaxScheduleMapper taxScheduleMapper;
    
    @ApiOperation(value="환율코드", notes="환율 코드를 enum에서 읽어오는 api")
    @GetMapping("/getCurrencyCode")
    public List<EnumMapperValue> getCurrencyCode() {
        return Arrays.stream(Currency.values())
                .map(EnumMapperValue::new)
                .collect(Collectors.toList());
    }
    
    @ApiOperation(value="세무일정 전체 조회", notes="홈텍스에서 스크래핑 한 세무일정 전체 조회하는 api")
    @GetMapping("/taxPlan/taxPlanMonth")
    public List<TaxScheduleVO> selectAccountMonth() {
        List<TaxScheduleVO> map = new ArrayList<>();
        
        map = taxScheduleMapper.selectTaxSchedule();
        
        return map;
    }
    
    /**
     * 환율 조회 API
     * @param reqMap
     * @return
     */
    @GetMapping("/exRate/{exRateDate}")
    public CommonResultVO getExRate(@PathVariable("exRateDate") String exRateDate) {
        Map<String, Object> map = exerpService.selectExRate(exRateDate);
        CommonResultVO commonResultVO = CommonResultVO.builder().data(map).build();
        return commonResultVO;
    }
    
    /**
     * 사업자 휴폐업 조회
     * @param serverName
     * @param bizNo
     * @return
     */
    @ApiOperation(value="사업자 휴폐업 조회", notes="넘겨진 사업자 번호로 휴폐업 여부를 조회하는 api")
    @ApiImplicitParams({
        @ApiImplicitParam(name="bizNo", value="사업자번호", required = true, dataType="string", defaultValue = "214-86-08930")
    })
    @GetMapping("/biz/bizInfo/{bizNo}")
    public CommonResultVO getBizInfo(@PathVariable("bizNo") String bizNo) {        
        Map<String, Object> map = new HashMap<>();
        map = bizService.getBizInfo(bizNo);
        CommonResultVO commonResultVO = CommonResultVO.builder()
                                            .resultMsg((String)map.get("trtCntn"))
                                            .data(map)
                                            .build();
        return commonResultVO;
    }
    
    /*
     * @ApiOperation(value="사업자 휴폐업 조회", notes="넘겨진 사업자 번호로 휴폐업 여부를 조회하는 api")
     * 
     * @ApiImplicitParams({
     * 
     * @ApiImplicitParam(name="bizNo", value="사업자번호", required = true,
     * dataType="string", defaultValue = "214-86-08930")
     * ,@ApiImplicitParam(name="serverName", value="요청 서버 명", required = true,
     * dataType="string", defaultValue = "fim") })
     * 
     * @GetMapping("/biz/bizInfo/{serverName}/{bizNo}") public CommonResultVO
     * getBizInfo(@PathVariable("serverName") String
     * serverName, @PathVariable("bizNo") String bizNo) { Map<String, Object> map =
     * new HashMap<>(); map = homeTaxService.getBizInfo(serverName, bizNo);
     * CommonResultVO commonResultVO = CommonResultVO.builder()
     * .resultMsg((String)map.get("trtCntn")) .data(map) .build(); return
     * commonResultVO; }
     */
    
    @ApiOperation(value="사업자 휴폐업 조회 이력", notes="사업자 휴폐업 조회한 이력을 조회")
    @GetMapping("/biz/bizInfo/bizInfoList")
    public CommonResultVO bizInfoList(BizVO bizVO) {
        Map<String, Object> map = new HashMap<>();
        map = bizService.selectBuzInfoList(bizVO);
        CommonResultVO commonResultVO = CommonResultVO.builder()
                                            .data(map)
                                            .build();
        return commonResultVO;
    }
    
}

package net.smilegate.fim.controller.financiallink;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import io.swagger.annotations.ApiOperation;
import lombok.RequiredArgsConstructor;
import net.smilegate.fim.enums.Currency;
import net.smilegate.fim.enums.EnumMapperValue;
import net.smilegate.fim.mappers.fim.TaxScheduleMapper;
import net.smilegate.fim.service.exerp.ExerpService;
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
    
    
    
}

package net.smilegate.fim.controller.index;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.function.Predicate;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import io.swagger.annotations.ApiOperation;
import lombok.RequiredArgsConstructor;
import net.smilegate.fim.enums.CommonCode;
import net.smilegate.fim.service.sgerp.SgerpService;
import net.smilegate.fim.service.taxplan.TaxPlanService;
import net.smilegate.fim.vo.CommonResultVO;

@RequiredArgsConstructor
@RestController
public class IndexProcController {
    
    private final SgerpService exerpService;
    
    private final TaxPlanService taxPlanService;
    
    @Value("${exrate.indexItem}")
    private String EXRATE_INDEX_ITEM;
    
    @ApiOperation(value="최초 조회 메서드", notes="index접근 시 최초 조회용 api")
    @GetMapping("/index/getInitData")
    public CommonResultVO getInitData() {
        Map<String, Object> map = new HashMap<>();
        try {
            // map = exerpService.selectExRate(CommonUtil.getToday("yyyyMMdd"));
            map = exerpService.selectExRate("");        // 오늘자 환율 정보 전체 조회
            @SuppressWarnings("unchecked")
            List<Map<String, String>> exRateList = (List<Map<String, String>>)map.get("exRateList");            // 환율정보
            List<String> list = Arrays.stream(EXRATE_INDEX_ITEM.split(",",-1)).collect(Collectors.toList());    // filter처리 할 환율 정보
            
            map.put("exRateList", exRateList.stream().filter(exRate -> 
                list.stream().anyMatch(Predicate.isEqual(exRate.get("CurrName")))
            ).collect(Collectors.toList()));
            map.putAll(taxPlanService.getTaxPlan());
        }catch (Exception e ) {
            e.printStackTrace();
        }
        CommonResultVO commonResultVO = CommonResultVO.builder()
                .result(CommonCode.SUCCESS.getCode())
                .data(map)
                .build();
        return commonResultVO;
    }
    
}

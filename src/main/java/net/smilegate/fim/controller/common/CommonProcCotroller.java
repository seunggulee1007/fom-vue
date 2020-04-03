package net.smilegate.fim.controller.common;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import lombok.RequiredArgsConstructor;
import net.smilegate.fim.service.common.CommonService;
import net.smilegate.fim.vo.common.CommonResultVO;

@RestController
@RequiredArgsConstructor
@RequestMapping("/common")
public class CommonProcCotroller {

    private final CommonService commonService;
    
    @GetMapping("/getBudgetDeptInfo")
    public CommonResultVO getBudgetDeptInfo(String comCd, String deptCd) {
        return CommonResultVO
                    .builder()
                    .data(commonService.selectBudgetDeptInfo(comCd, deptCd))
                .build();
    }
    
}

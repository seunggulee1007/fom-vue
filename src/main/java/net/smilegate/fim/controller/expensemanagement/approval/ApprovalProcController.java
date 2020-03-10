package net.smilegate.fim.controller.expensemanagement.approval;

import java.util.HashMap;
import java.util.Map;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import lombok.RequiredArgsConstructor;
import net.smilegate.fim.service.mdi.MdiService;
import net.smilegate.fim.vo.CommonResultVO;

@RestController
@RequiredArgsConstructor
@RequestMapping("/expense_management/approval")
public class ApprovalProcController {
    
    private final MdiService mdiService;
    
    @RequestMapping("/getDeptList")
    public CommonResultVO getDeptList() {
        Map<String, Object> map = new HashMap<>();
        map = mdiService.selectDeptList();
        return CommonResultVO.builder().data(map).build();
    }
    

}

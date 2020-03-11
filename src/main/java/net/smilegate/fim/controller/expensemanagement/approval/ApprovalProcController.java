package net.smilegate.fim.controller.expensemanagement.approval;

import java.util.HashMap;
import java.util.Map;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import lombok.RequiredArgsConstructor;
import net.smilegate.fim.service.expense.ExpenseService;
import net.smilegate.fim.service.mdi.MdiService;
import net.smilegate.fim.vo.CommonResultVO;

@RestController
@RequiredArgsConstructor
@RequestMapping("/expense_management/approval")
public class ApprovalProcController {
    
    private final MdiService mdiService;
    private final ExpenseService expenseService;
    
    @ApiOperation(value="부서리스트 조회", notes ="스마일 게이트 부서리스트 가져오는 메서드")
    @GetMapping("/getDeptList")
    public CommonResultVO getDeptList() {
        Map<String, Object> map = new HashMap<>();
        map = mdiService.selectDeptList();
        return CommonResultVO.builder().data(map).build();
    }
    
    @ApiOperation(value="사용자 정보 조회", notes="넘겨진 부서 코드로 해당 부서에 소속된 부서원 조회하는 메서드")
    @ApiImplicitParams({
        @ApiImplicitParam(name="deptCd", value="부서코드", required = true, dataType="string", defaultValue = "H0000070")
    })
    @GetMapping("/getUserList")
    public CommonResultVO getUserList(String deptCd) {
        Map<String, Object> map =new HashMap<>();
        map = mdiService.selectUserList(deptCd);
        return CommonResultVO.builder().data(map).build();
    }
    
    @ApiOperation(value="비용항목 조회", notes="넘겨진 검색조건으로 비용항목 조회하는 메서드")
    @GetMapping("/getExpense")
    public CommonResultVO getExpense(@RequestParam(required = false) Map<String, Object> searchRequest) {
        Map<String, Object> map = new HashMap<>();
        map = expenseService.selectExpenseList(searchRequest);
        return CommonResultVO.builder().data(map).build();
    }
}

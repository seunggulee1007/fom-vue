package net.smilegate.fim.controller.expensemanagement.approval;

import java.util.HashMap;
import java.util.Map;

import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import lombok.RequiredArgsConstructor;
import net.smilegate.fim.enums.CommonMsg;
import net.smilegate.fim.service.expense.ExpenseService;
import net.smilegate.fim.service.file.tiarcost.TiarCostFileService;
import net.smilegate.fim.service.mdi.MdiService;
import net.smilegate.fim.service.sgerp.SgerpService;
import net.smilegate.fim.service.sgerpma.SgerpmaService;
import net.smilegate.fim.vo.ExpenseVO;
import net.smilegate.fim.vo.UserVO;
import net.smilegate.fim.vo.common.CommonResultVO;
import net.smilegate.fim.vo.common.PagingVO;
import net.smilegate.fim.vo.tiarcost.TiarCostVO;

@RestController
@RequiredArgsConstructor
@RequestMapping("/expenseManagement/approval")
public class ApprovalProcController {
    
    private final MdiService mdiService;
    private final SgerpmaService sgerpmaService;
    private final SgerpService sgerpService;
    private final ExpenseService expenseService;
    private final TiarCostFileService tiarCostFileService;
    
    /**
     * 부서 리스트 조회
     * @return
     */
    @ApiOperation(value="부서리스트 조회", notes ="스마일 게이트 부서리스트 가져오는 메서드")
    @GetMapping("/getDeptList")
    public CommonResultVO getDeptList() {
        Map<String,Object> map = new HashMap<>();
        map.put("deptList", mdiService.selectDeptList());
        return CommonResultVO
                    .builder()
                        .data(map)
                        .build();
    }
    
    /**
     * 사용자 정보 조회
     * @param deptCd
     * @return
     */
    @ApiOperation(value="사용자 정보 조회", notes="넘겨진 부서 코드로 해당 부서에 소속된 부서원 조회하는 메서드")
    @ApiImplicitParams({
        @ApiImplicitParam(name="deptCd", value="부서코드", required = true, dataType="string", defaultValue = "H0000070")
    })
    @GetMapping("/getUserList")
    public CommonResultVO getUserList(String deptCd) {
        Map<String, Object> map = new HashMap<>();
        map.put("userList", mdiService.selectUserList(deptCd));
        return CommonResultVO
                    .builder()
                        .data(map)
                        .build();
    }
    
    /**
     * 비용 항목 조회
     * @param expenseVO
     * @return
     */
    @ApiOperation(value="비용항목 조회", notes="넘겨진 검색조건으로 비용항목 조회하는 메서드")
    @GetMapping("/getExpense")
    public CommonResultVO getExpense(ExpenseVO expenseVO) {
        return CommonResultVO
                    .builder()
                        .data(sgerpmaService.selectResultCostMap(expenseVO))
                        .build();
    }
    
    /**
     * 비용항목 조회
     * @param expenseVO
     * @return
     */
    @ApiOperation(value="비용항목 조회", notes="넘겨진 검색조건(activityNm)으로 비용항목 조회하는 메서드")
    @GetMapping("/getExpenseByActivityNm")
    public CommonResultVO getExpenseByActivityNm(ExpenseVO expenseVO) {
        return CommonResultVO
                    .builder()
                        .data(sgerpmaService.selectResultCostMapByActivityNm(expenseVO))
                        .build();
    }

    /**
     * 임원 여부 조회
     * @param userNm
     * @return
     */
    @ApiOperation(value="임원 여부 조회", notes="해당 이름이 임원인지 여부 조회")
    @GetMapping("/getImwonCheck/{userName}")
    public CommonResultVO getImwonCheck(@PathVariable("userNm")String userNm) {
        Map<String, Object> map = new HashMap<>();
        map = sgerpmaService.getImwonCheck(userNm);
        return CommonResultVO.builder().data(map).build();
    }
    
    /**
     * 지출결의 조회
     * @param tiCostSeq
     * @return
     */
    @ApiOperation(value="지출결의 조회", notes="지출결의 내부번호에 대한 지출결의 내역 조회")
    @ApiImplicitParams({
        @ApiImplicitParam(name="tiCostSeq", value="지출결의 내부 번호", required = true, dataType="int")
    })
    @GetMapping("/expenseList/{tiCostSeq}")
    public CommonResultVO selectExpense(@PathVariable("tiCostSeq")int tiCostSeq) {
        
        return CommonResultVO.builder().data(expenseService.selectExpense(tiCostSeq)).build();
    }
    
    /**
     * 지출결의 저장 및 수정
     * @param request
     * @param tiarCostVO
     * @return
     * @throws IllegalArgumentException
     * @throws IllegalAccessException
     */
    @ApiOperation(value="지출결의서 저장", notes="지출결의서 파일과 상세 내용 저장")
    @PostMapping("/expense")
    public CommonResultVO insertExpense(TiarCostVO tiarCostVO)  throws IllegalArgumentException, IllegalAccessException {
        Map<String, Object> map = new HashMap<>();
        System.err.println(tiarCostVO.toString());
        /*
         * int tiCostSeq = tiarCostVO.getTiCostSeq(); if(tiCostSeq == 0) { map =
         * expenseService.insertExpense(request, tiarCostVO); }else { map =
         * expenseService.updateExpense(request, tiarCostVO); }
         */
        return CommonResultVO.builder().resultMsg(CommonMsg.SUCCESS_WRITE.getMsg()).data(map).build();
    }
    
    /**
     * 은행 정보 조회
     * @param userVO
     * @return
     */
    @ApiOperation(value="은행 정보 조회", notes="부서, 사번으로 해당 사원의 은행 정보 조회")
    @ApiImplicitParams({
        @ApiImplicitParam(name="deptCd", value="부서코드", required = true, dataType="string", defaultValue = "h0000000")
        ,@ApiImplicitParam(name="empNo", value="사번", required = true, dataType="string", defaultValue = "H20044")
    })
    @GetMapping("/getBankInfo")
    public CommonResultVO getBankInfo(UserVO userVO) {
        return CommonResultVO.builder().data(sgerpService.getBankInfo(userVO)).build();
    }
    
    /**
     * 지출결의 내역 조회
     * @param pagingVO
     * @return
     */
    @ApiOperation(value="지출결의서 내역 조회")
    @GetMapping("/expenseHistoryList")
    public CommonResultVO selectExpenseHistoryList(PagingVO pagingVO) {
        return CommonResultVO.builder().data(expenseService.selectExpenseHitoryList(pagingVO)).build();
    }
    
    /**
     * 파일 삭제
     * @param fileId
     * @return
     */
    @DeleteMapping("/deleteTiarCostFileByFileId/{fileId}")
    public CommonResultVO deleteTiarCostFileByFileId(@PathVariable("fileId") int fileId) {
        tiarCostFileService.deleteTiarCostFileByFileId(fileId);
        return CommonResultVO.builder().resultMsg("삭제되었습니다").build();
    }
    
    /**
     * 지출결의서 삭제
     * @param tiCostSeq
     * @return
     */
    @DeleteMapping("/deleteExpense/{tiCostSeq}")
    public CommonResultVO deleteExpense(@PathVariable("tiCostSeq") int tiCostSeq) {
        expenseService.deleteExpense(tiCostSeq);
        return CommonResultVO.builder().resultMsg(CommonMsg.SUCCESS_DELETE.getMsg()).build();
    }
    
}

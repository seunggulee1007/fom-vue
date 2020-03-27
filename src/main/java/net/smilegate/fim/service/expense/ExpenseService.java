package net.smilegate.fim.service.expense;

import java.util.Map;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import net.smilegate.fim.vo.common.PagingVO;
import net.smilegate.fim.vo.tiarcost.TiarCostVO;

public interface ExpenseService {

    /**
     * 지출결의서 저장
     * @param request
     * @param tiarCostVO
     * @return
     * @throws IllegalArgumentException
     * @throws IllegalAccessException
     */
    public Map<String, Object> insertExpense(MultipartHttpServletRequest request ,TiarCostVO tiarCostVO) throws IllegalArgumentException, IllegalAccessException ;
    
    /**
     * 지출결의서 수정
     * @param request
     * @param tiarCostVO
     * @return
     * @throws IllegalArgumentException
     * @throws IllegalAccessException
     */
    public Map<String, Object> updateExpense(MultipartHttpServletRequest request ,TiarCostVO tiarCostVO)  throws IllegalArgumentException, IllegalAccessException;
    
    /**
     * 지출결의서 조회
     * @param tiCostSeq
     * @return
     */
    public Map<String, Object> selectExpense(int tiCostSeq);
    
    /**
     * 지출결의서 내역 조회
     * @param pagingVO
     * @return
     */
    public Map<String, Object> selectExpenseHitoryList(PagingVO pagingVO);
    
}

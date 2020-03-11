package net.smilegate.fim.mappers.fim;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import net.smilegate.fim.vo.ExpenseVO;

@Mapper
public interface ExpenseMapper {
    
    /**
     * 비용 항목 조회
     * @param expenseVO
     * @return
     */
    public List<ExpenseVO> selectExpenseList(ExpenseVO expenseVO);
    
}

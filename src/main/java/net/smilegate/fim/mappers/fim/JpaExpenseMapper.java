package net.smilegate.fim.mappers.fim;

import java.util.List;
import java.util.Optional;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import net.smilegate.fim.vo.ExpenseVO;

@Mapper
public interface JpaExpenseMapper extends JpaRepository<ExpenseVO, Integer>, JpaSpecificationExecutor<ExpenseVO>{

    public Optional<List<ExpenseVO>> findByMidDivCdNmLike(String midDivNm);
    
    public Optional<List<ExpenseVO>> findByActivityCdNmLike(String activityCd);
    
}


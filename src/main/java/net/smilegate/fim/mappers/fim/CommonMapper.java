package net.smilegate.fim.mappers.fim;

import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface CommonMapper {
    
    public Map<String, Object> selectBudgetDeptInfo(@Param("comCd") String comCd, @Param("deptCd") String deptCd);
    
}

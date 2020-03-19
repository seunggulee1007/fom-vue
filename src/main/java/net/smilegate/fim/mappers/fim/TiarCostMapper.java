package net.smilegate.fim.mappers.fim;

import org.apache.ibatis.annotations.Mapper;

import net.smilegate.fim.vo.TiarCostVO;

@Mapper
public interface TiarCostMapper {

    
    public int insertTiarCost(TiarCostVO tiarCostVO);
    
}

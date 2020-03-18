package net.smilegate.fim.mappers.fim;

import org.apache.ibatis.annotations.Mapper;

import net.smilegate.fim.vo.TiarCostAmtVO;

@Mapper
public interface TiarCostAmtMapper {

    
    public int insertTiarCostAmt(TiarCostAmtVO tiarCostAmtVO);
    
}

package net.smilegate.fim.mappers.fim;

import org.apache.ibatis.annotations.Mapper;

import net.smilegate.fim.vo.TiarCostAmtHistVO;

@Mapper
public interface TiarCostAmtHistMapper {

    /**
     * 지출결의서 상세 수정 이력 저장
     * @param tiarCostAmtVO
     * @return
     */
    public int insertTiarCostAmtLog(TiarCostAmtHistVO tiarCostAmtHistVO);
    
}

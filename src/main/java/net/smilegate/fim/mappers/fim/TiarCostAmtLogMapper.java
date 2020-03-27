package net.smilegate.fim.mappers.fim;

import org.apache.ibatis.annotations.Mapper;

import net.smilegate.fim.vo.tiarcost.TiarCostAmtLogVO;

@Mapper
public interface TiarCostAmtLogMapper {

    /**
     * 지출결의서 상세 이력 저장
     * @param tiarCostAmtVO
     * @return
     */
    public int insertTiarCostAmtLog(TiarCostAmtLogVO tiarCostAmtLogVO);
    
}

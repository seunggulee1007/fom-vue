package net.smilegate.fim.mappers.fim;

import org.apache.ibatis.annotations.Mapper;

import net.smilegate.fim.vo.TiarCostLogVO;

@Mapper
public interface TiarCostLogMapper {

    /**
     * 지출결의서 저장
     * @param tiarCostVO
     * @return
     */
    public int insertTiarCostLog(TiarCostLogVO tiarCostLogVO);
    
}

package net.smilegate.fim.mappers.fim;

import org.apache.ibatis.annotations.Mapper;

import net.smilegate.fim.vo.TiarCostVO;

@Mapper
public interface TiarCostHistMapper {

    /**
     * 지출결의서 저장
     * @param tiarCostVO
     * @return
     */
    public int insertTiarCost(TiarCostVO tiarCostVO);
    
    /**
     * 지출결의서 수정
     * @param tiarCostVO
     * @return
     */
    public int updateTiarCost(TiarCostVO tiarCostVO);
}

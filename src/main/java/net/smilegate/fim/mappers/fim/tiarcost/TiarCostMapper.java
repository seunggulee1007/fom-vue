package net.smilegate.fim.mappers.fim.tiarcost;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import net.smilegate.fim.vo.common.PagingVO;
import net.smilegate.fim.vo.tiarcost.TiarCostVO;

@Mapper
public interface TiarCostMapper {

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
    
    /**
     * 지출결의서 조회
     * @param tiCostSeq
     * @return
     */
    public TiarCostVO selectTiarCostByTiCostSeq(@Param("tiCostSeq") int tiCostSeq);
    
    /**
     * 지출결의서 내역 조회
     * @param pagingVO
     * @return
     */
    public List<TiarCostVO> selectTiarCostByPaging(PagingVO pagingVO);
    
    /**
     * 전체 페이지 갯수 조회
     * @param pagingVO
     * @return
     */
    public int selectTiarCostByPagingCnt(PagingVO pagingVO);
}

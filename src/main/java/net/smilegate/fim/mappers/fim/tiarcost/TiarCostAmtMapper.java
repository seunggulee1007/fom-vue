package net.smilegate.fim.mappers.fim.tiarcost;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import net.smilegate.fim.vo.tiarcost.TiarCostAmtVO;

@Mapper
public interface TiarCostAmtMapper {

    /**
     * 지출결의서 상세 저장
     * @param tiarCostAmtVO
     * @return
     */
    public int insertTiarCostAmt(TiarCostAmtVO tiarCostAmtVO);
    
    /**
     * 지출결의서 상세 수정
     * @param tiarCostAmtVO
     * @return
     */
    public int updateTiarCostAmt(TiarCostAmtVO tiarCostAmtVO);
    
    /**
     * 지출결의서 상세 조회
     * @param tiCostSeq
     * @param tiCostSerl
     * @return
     */
    public TiarCostAmtVO selectTiarCostAmtBySeq(@Param("tiCostSeq")int tiCostSeq, @Param("tiCostSerl")int tiCostSerl);
    
    /**
     * 지출결의서 상세 리스트 조회
     * @param tiCostSeq
     * @return
     */
    public List<TiarCostAmtVO> selectTiarCostAmtByTiarCostSeq(@Param("tiCostSeq") int tiCostSeq);
    
    /**
     * 지출결의 내부 번호로 삭제
     * @param tiCostSerl
     * @return
     */
    public int deleteTiarCostAmt(@Param("tiCostSeq")int tiCostSeq, @Param("tiCostSerl") int tiCostSerl);
    
    /**
     * 지출 결의 내부번호에 대한 상세 리스트 전체 삭제
     * @param tiCostSeq
     * @return
     */
    public int deleteTiarCostAmtByTiCostSeq(@Param("tiCostSeq") int tiCostSeq);
    
}

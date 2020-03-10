package net.smilegate.fim.mappers.fim;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import net.smilegate.fim.vo.TaxScheduleVO;

@Mapper
public interface TaxScheduleMapper {
    
    /**
     * 월별 세부 일정 조회
     * @return
     */
    public List<TaxScheduleVO> selectTaxSchedule();
    
    /**
     * 월별 세부 일정 조회
     * @param taxMonth
     * @return
     */
    public TaxScheduleVO selectTaxScheduleByMonth(String taxMonth);
    
    /**
     * 세부 일정 저장
     * @param map
     * @return
     */
    public int insertTaxSchedule(TaxScheduleVO taxScheduleVO);
    
    /**
     * 세부 일정 전체 삭제
     * @return
     */
    public int deleteTaxSchedule();
    
    /**
     * 인덱스 페이지 조회
     * @return
     */
    public List<TaxScheduleVO> selectTaxScheduleByIndex();
    
}

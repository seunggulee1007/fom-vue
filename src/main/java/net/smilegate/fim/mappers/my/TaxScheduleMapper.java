package net.smilegate.fim.mappers.my;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface TaxScheduleMapper {
    
    /**
     * 월별 세부 일정 조회
     * @return
     */
    public List<Map<String, Object>> selectTaxSchedule();
    
    /**
     * 월별 세부 일정 조회
     * @param taxMonth
     * @return
     */
    public Map<String,String> selectTaxScheduleByMonth(String taxMonth);
    
    /**
     * 세부 일정 저장
     * @param map
     * @return
     */
    public int insertTaxSchedule(Map<String, Object> map);
    
    /**
     * 세부 일정 전체 삭제
     * @return
     */
    public int deleteTaxSchedule();
    
    /**
     * 인덱스 페이지 조회
     * @return
     */
    public List<Map<String, Object>> selectTaxScheduleByIndex();
    
}

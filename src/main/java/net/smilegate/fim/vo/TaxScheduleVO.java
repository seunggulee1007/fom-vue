package net.smilegate.fim.vo;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Transient;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Entity(name="TB_TAX_SCHEDULE")
@AllArgsConstructor
@NoArgsConstructor
public class TaxScheduleVO implements Serializable {
    
    /**
     * 
     */
    private static final long serialVersionUID = 2243197179561221931L;

    
    @EmbeddedId
    /** 복합 키 */
    private TaxSchedulePK taxSchedulePK;
    
    @Transient
    /** 세무일정(월) */
    private String taxMonth;
    
    @Transient
    /** 세무일정(일) */
    private String taxDay;
    
    @Transient
    /** 세무일정 계획 */
    private String taxPlan;
    
    @Transient
    /** 세무 일정 월 일 */
    private String taxDate;
    
    @Column(name="NOTE", length=500)
    /** 세무일정 비고 */
    private String note;

    /**
     * 월별 달력 세팅 값
     * fullCalendar에서 사용하는 변수들
     * id : id값
     * groupId : 그룹 만들어 줄 값
     * allDay : true/false 값으로 하루종일 이벤트 여부
     * start : 시작일
     * end : 종료일
     * title : 제목
     * url : 클릭시 이동할 경로
     * 등등...
     * https://fullcalendar.io/docs/event-parsing 참조
     */
    @Transient
    private String start;
    
    @Transient
    private String title;
    
    @Transient
    private String description;
    
    @Data
    @Embeddable
    @Builder
    public static class TaxSchedulePK implements Serializable {

        /**
         * 
         */
        private static final long serialVersionUID = 608243436752427836L;

        @Column(name="TAX_MONTH", length=2)
        private String taxMonth;
        
        @Column(name="TAX_DAY", length=2)
        private String taxDay;
        
        @Column(name="TAX_PLAN", length=300)
        private String taxPlan;
        
    }
}

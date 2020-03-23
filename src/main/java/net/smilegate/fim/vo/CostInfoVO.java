package net.smilegate.fim.vo;

import lombok.Data;

@Data
public class CostInfoVO {

    /** 법인코드 */
    private int companySeq;
    /** 비용신청 내부키 */
    private int tiCostSeq;
    /** 비용신청 순번 */
    private int tiCostSerl;
    /** 비용항목 중분류 */
    private String smKindSeq;
    /** 비용항목 소분류 */
    private String costSeq;
    /** 비용항목 코드 */
    private String costItemCd;
    /** 활동 센터 */
    private String activityCd;
    /** 업체명(접대비) */
    private String custName;
    /** 업체 담당자(접대비) */
    private String userName;
    /** 목적(접대비)*/
    private String purpose;
    /** 출장정보코드 */
    private String busiTripCode;
    /** 출장구분 코드 */
    private String busiTripType;
    /** 출발지*/
    private String startArea;
    /** 도착지 */
    private String destArea;
    /** 업무시작시간 */
    private String workStart;
    /** 업무 종료 시간 */
    private String workEnd;
    /** 거리 */
    private int distance;
    /** 인원수 */
    private int personCnt;
    /** 탑승자 */
    private String personName;
    /** 금액 */
    private int transAmt;
    /** 등록일시 */
    private String regDate;
    
    
}

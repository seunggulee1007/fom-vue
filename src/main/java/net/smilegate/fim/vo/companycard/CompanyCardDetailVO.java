package net.smilegate.fim.vo.companycard;

import lombok.Data;

@Data
public class CompanyCardDetailVO {


	/** 사용여부 체크 */
	private String useCheck;

	/** 개인비용처리여부 */
	private String isPersonProc;

	/** 내부코드 */
	int cardUseSeq;

	/** ERP법인코드 */
	int companySeq;

	/** 승인취소여부 */
	String cancelYn;

	/** 승인순번 */
	int apprSeq;

	/** 승인번호 */
	String apprNo;

	/** 승인일 */
	String apprDate;

	/** 카드번호 */
	String cardCd;

	/** 인사법인코드 */
	String comCd;

	/** 인사법인명 */
	String comNm;

	/** 가맹점명 */
	String chainNm;

	/** 가맹점 사업자번호 */
	String chainId;

	/** 예산부서코드2 */
	String budgetDeptCd;

	/** 예산부서명2 */
	String budgetDeptNm;

	/** ERP 예산부서코드 */
	int budgetErpDeptSeq;

	/** ERP 예산부서명 */
	String budgetErpDeptNm;

	/** 사용자코드 */
	String useUserId;

	/** 사용자명 */
	String useUserNm;

	/** 사용자부서코드 */
	int useErpDeptSeq;

	/** 사용자사번 */
	String useEmpNo;

	/** 비용항목 중분류명 */
	String smKindNm;

	/** 비용항목 중분류 */
	int smKindSeq;

	/** 비용항목 소분류 */
	int costSeq;

	/** 비용항목 소분류명 */
	String costNm;

	/** SGMA_중분류(비용항목코드) */
	int costItemCd;

	/** SGMA_중분류명(비용항목코드) */
	String costItemNm;

	/** SGMA_소분류(액티비티) */
	String activityCd;

	/** SGMA_소분류명(액티비티) */
	String activityNm;

	/** 업체명(접대비) */
	String custName;

	/** 업체 담당자(접대비) */
	String userName;

	/** 목적(접대비) */
	String purpose;

	/** 출장정보코드(출장정보) */
	String busiTripCode;

	/** 출장구분코드(출장정보) */
	String busiTripType;

	/** 출발지(교통비) */
	String startArea;

	/** 목적지(교통비) */
	String destArea;

	/** 업무시작시간(교통비) */
	String workStart;

	/** 업무종료시간(교통비) */
	String workEnd;

	/** 거리(Km)(교통비) */
	int distance;

	/** 인원수(교통비) */
	int personCnt;

	/** 금액(교통비) */
	double transAmt;

	/** 탑승자(교통비) */
	String personName;

	/** 공급가 */
	double supplyAmt;

	/** 부가세 */
	double apprTax;

	/** 봉사료 */
	double tipAmt;

	/** 승인금액 */
	double apprAmt;

	/** 통화 */
	String currCd;

	/** 외화금액 */
	double curAmt;

	/** 간이세액구분 */
	String chainType;

	/** 마감여부 */
	String closeYn;

	/** 가맹점 주소 */
	String chainAddr;

	/** 업종 */
	String mccName;

	/** 대표자명 */
	String chainMaster;

	/** 데이터 최종수정일 */
	String  lastDateTime;

	/** 데이터 최종수정자 사원코드 */
	String lastUserId;

	/** 작업구분 */
	String logTag;

	/** 로그작업자. */
	private String logUserId;

	/** 로그 작업일시 */
	private String logDateTime;

    /** 비용항목 관리 */
    private CompanyCardCostInfoVO costInfoVO;
}






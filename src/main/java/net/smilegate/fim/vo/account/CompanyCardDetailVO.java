package net.smilegate.fim.vo.account;

import lombok.Data;
import net.smilegate.fim.vo.CostInfoVO;

@Data
public class CompanyCardDetailVO {

	/** 사용여부 체크 */
	private String useCheck;

	/** 내부코드  */
	private int cardUseSeq;

	/** ERP법인코드  */
	private int companySeq;

	/** 승인취소여부  */
	private String cancelYn;

	/** 승인순번  */
	private int apprSeq;

	/** 승인번호  */
	private String apprNo;

	/** 카드번호  */
	private String cardCd;

	/** 승인일  */
	private String apprDate;

	/** 인사법인코드  */
	private String comCd;

	/** 가맹점명  */
	private String chainNm;

	/** 가맹점 사업자번호  */
	private int chainId;

	/** 예산부서코드2  */
	private int budgetDeptCd;

	/** 예산부서코드  */
	private int budgetErpDeptSeq;

	/** 사용자코드  */
	private String useUserId;

	/** 사용자부서코드  */
	private int useErpDeptSeq;

	/** 사용자사번  */
	private String useEmpNo;

	/** 비용항목 소분류  */
	private String erpCostSeq;

	/** 비용항목 중분류  */
	private String erpSmKindSeq;

	/** SGMA_중분류(비용항목코드)  */
	private int costItemCd;

	/** SGMA_소분류(액티비티)  */
	private String activityCd;

	/** 업체명(접대비)  */
	private String custName;

	/** 업체 담당자(접대비)  */
	private String userName;

	/** 목적(접대비)  */
	private String purpose;

	/** 출장정보코드(출장정보)  */
	private String busiTripCode;

	/** 출장구분코드(출장정보)  */
	private String busiTripType;

	/** 출발지(교통비)  */
	private String startArea;

	/** 목적지(교통비)  */
	private String destArea;

	/** 업무시작시간(교통비)  */
	private String workStart;

	/** 업무종료시간(교통비)  */
	private String workEnd;

	/** 거리(Km)(교통비)  */
	private int distance;

	/** 인원수(교통비)  */
	private int personCnt;

	/** 금액(교통비)  */
	private double transAmt;

	/** 탑승자(교통비)  */
	private String personName;

	/** 공급가  */
	private double supplyAmt;

	/** 부가세  */
	private double apprTax;

	/** 봉사료  */
	private double tipAmt;

	/** 승인금액  */
	private double apprAmt;

	/** 통화  */
	private String currCd;

	/** 외화금액  */
	private double curAmt;

	/** 간이세액구분  */
	private String chainType;

	/** 새 컬럼14  */
	private String authHh;

	/** 새 컬럼15  */
	private String isDefine;

	/** 마감여부  */
	private String closeYn;

	/** 가맹점 주소  */
	private String chainAddr;

	/** 업종  */
	private String mccName;

	/** 대표자명  */
	private String chainMaster;

    /** 비용항목 관리 */
    private CompanyCardCostInfoVO costInfoVO;
}

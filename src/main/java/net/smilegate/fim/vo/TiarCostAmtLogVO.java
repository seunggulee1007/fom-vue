package net.smilegate.fim.vo;

import lombok.Data;

@Data
public class TiarCostAmtLogVO {
    
    /** 로그 시퀀스 */
    private int logSeq;
    /** 비용신청 내부키 */
    private int tiCostSeq;
    /** 비용신청 순번 */
    private int tiCostSerl;
    /** 법인코드 */
    private int companySeq;
    /** 사용일 */
    private String useDate;
    /** 부서 vo */
    private DeptVO deptVO;
    /** 활동센터 코드 */
    private int cCtrSeq;
    /** 통화코드 */
    private int erpCurrSeq;
    /** 통화명 */
    private String currNm;
    /** 환율 */
    private double exRate;
    /** 부가세여부 */
    private String isVat;
    /** 금액*/
    private int curAmt;
    /** 부가세 */
    private int curVat;
    /** 원화금액(공급가) */
    private int domAmt;
    /** 원화 부가세 */
    private int domVat;
    /** 거래처코드 */
    private int custSeq;
    /** 거래처 Text*/
    private String custText;
    /** 예산 부서 */
    private int budgetDeptSeq;
    /** 증빙내부코드 */
    private int erpEvidSeq;
    /** 계정과목 */
    private int erpAccSeq;
    /** 부가세 계정코드 */
    private int erpVatAccseq;
    /** 상대계정코드 */
    private int erpOppAccSeq;
    /** 비용구분 */
    private int erpUmCostType;
    /** 인사 사용자부서코드 */
    private String useDeptCd;
    /** 적요 */
    private String remark;
    /** 데이터 최종수정자 */
    private int lastUserId;
    /** 데이터 최종수정일*/
    private String lastDateTime;
    /** 원화 총 금액 */
     private int amt;
     /** 사용자 소속실 부서 코드 */
     private int useAccErpDeptSeq;
     /** 접대대상자 */
     private String guest;
     /** 가맹점 */
     private String store;
     /** 항목 */
     private int tripGubun;
     /** 공용비용여부 */
     private String isPublicCost;
     /** 카드코드 */
     private int erpCardSeq;
     /** 비고2 */
     private String remark2;
     /** 관리항목코드1 */
     private int erpRemSeq;
     /** 관리세부항목코드1 */
     private int erpRemValSeq;
     /** 관리항목코드2 */
     private int erpRemSeq2;
     /** 관리세부항목코드2*/
     private int erpRemValSeq2;
     /** 비용항목 중분류 */
     private String smKindSeq;
     /** 비용항목 소분류 */
     private String costSeq;
     /** 비용항목 관리 */
     private CostInfoVO costInfoVO;
     
}

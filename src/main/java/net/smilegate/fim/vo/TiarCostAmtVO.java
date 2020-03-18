package net.smilegate.fim.vo;

import lombok.Data;

@Data
public class TiarCostAmtVO {

    /** 법인코드 */
    private int companySeq;
    /** 비용신청 내부키 */
    private int tiCostSeq;
    /** 비용신청 순번 */
    private int tiCostSerl;
    /** 사용일 */
    private String useDate;
    /** 부서 vo */
    private DeptVO deptVO;
    /** 사용자 코드 */
    private int useEmpSeq;
    /** 사용자 법인사번 */
    private String useEmpId;
    /** 사용자부서코드 */
    private int useDeptSeq;
    /** 활동센터 코드 */
    private int cCtrSeq;
    /** 비용항목코드 */
    private int costItemCd;
    /** 통화코드 */
    private int currSeq;
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
    private int evidSeq;
    /** 계정과목 */
    private int accSeq;
    /** 부가세 계정코드 */
    private int vatAccseq;
    /** 상대계정코드 */
    private int oppAccSeq;
    /** 비용구분 */
    private int umCostType;
    /** 적요 */
    private String remark;
    /** 데이터 최종수정자 */
    private int lastUserSeq;
    /** 데이터 최종수정일*/
    private String lastDateTime;
    /** 인사 사용자부서코드 */
    private String useDeptCd;
    /** 원화 총 금액 */
     private int amt;
     /** 사용자 소속실 부서 코드 */
     private int useAccDeptSeq;
     /** 접대대상자 */
     private String guest;
     /** 가맹점 */
     private String store;
     /** 항목 */
     private int tripGubun;
     /** 공용비용여부 */
     private String isPublicCost;
     /** 카드코드 */
     private int cardSeq;
     /** 비고2 */
     private String remark2;
     /** 관리항목코드1 */
     private int remSeq;
     /** 관리세부항목코드1 */
     private int remValSeq;
     /** 관리항목코드2 */
     private int remSeq2;
     /** 관리세부항목코드2*/
     private int remValSeq2;
     /** 비용항목 중분류 */
     private String smKindSeq;
     /** 비용항목 소분류 */
     private String costSeq;
     /** 비용항목 관리 */
     private CostInfoVO costInfoVO;
     
}

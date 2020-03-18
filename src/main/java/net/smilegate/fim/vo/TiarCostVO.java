package net.smilegate.fim.vo;

import java.util.List;

import lombok.Data;

@Data
public class TiarCostVO {

    /** 법인 코드 */
    private int companySeq;
    /** 지출결의서 내부키 */
    private int tiCostSeq;
    /** 지출결의서 문서번호 */
    private String tiCostNo;
    /** 지출내역(비고) */
    private String contents;
    /** 전표내부코드 */
    private int slipSeq;
    /** 그룹웨어상태값코드 */
    private String grstatus;
    /** 그룹웨어 최종결제 여부 */
    private int grEndStatus;
    /** erp확정여부 코드 */
    private int confirm;
    /** 인사법인 코드 */
    private String comCd;
    /** 인사등록자부서 코드 */
    private String regDeptCd;
    /** GW전자결제 키 값 */
    private int pid;
    /** 등록자 소속실 부서 코드 */
    private int accDeptSeq;
    /** 입력 주체 */
    private String inputKind;
    /** 전표회계일 */
    private String accDate;
    /** 출금예정일 */
    private String dueDate;
    /** 중단여부 */
    private String isStop;
    /** 중단일자 */
    private String stopDate;
    /** 메모 */
    private String memo;
    /** 기안일자 */
    private String regDate;
    /** 기안자코드 */
    private int regEmpSeq;
    /** 기안자 법인 사번 */
    private String regEmpId;
    
    /** # 기안자 이름 */
    private String regEmpNm;
    
    /** 기안자 부서 코드 */
    private int regDeptSeq;
    
    /** # 기안자 부서명 */
    private String regDeptNm;
    
    /** 데이터 최종수정자 */
    private int lastUserSeq;
    /** 데이터 최종 수정일 */
    private String lastDateTime;
    /** 지출결의서(비용정산)상세 리스트 */
    private List<TiarCostAmtVO> tiarCostAmtList;
    
    /** 계좌번호 */
    private String acctNo;
    /** 제목 */
    private String title;
    /** 은행명 */
    private String bankNm;
    /** 은행코드 */
    private String bankCd;
    /** 예금주 */
    private String acctNm;
    
}

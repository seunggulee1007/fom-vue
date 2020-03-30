package net.smilegate.fim.vo.tiarcost;

import java.util.List;

import lombok.Data;
import net.smilegate.fim.vo.FileVO;

@Data
public class TiarCostVO {

    /** 지출결의서 내부키 */
    private int tiCostSeq;
    /** 지출결의서 문서번호 */
    private String tiCostNo;
    /** 법인 코드 */
    private int companySeq;
    /** 지출내역(비고) */
    private String contents;
    /** 전표내부코드 */
    private int erpSlipSeq;
    /** 제목 */
    private String title;
    /** 계좌번호 */
    private String acctNo;
    /** 은행코드 */
    private String bankCd;
    
    private String bankNm;
    /** 예금주 */
    private String acctOwnerNm;
    /** 그룹웨어상태값코드 */
    private String grstatus;
    /** 그룹웨어 최종결제 여부 */
    private int grEndStatus;
    /** erp확정여부 코드 */
    private int confirm;
    /** 인사법인 코드 */
    private String comCd;
    private String comNm;
    /** GW전자결제 키 값 */
    private int pid;
    /** 등록자 소속실 부서 코드 */
    private int accErpDeptSeq;
    
    private String accErpDeptNm;
    /** 입력 주체 */
    private String inputKind;
    /** 출금예정일 */
    private String dueDate;
    /** 메모 */
    private String memo;
    /** 기안일자 */
    private String regDate;
    
    /** 기안자 Erp사원 코드*/
    private int regErpEmpSeq;
    /** 기안자 사원 코드 */
    private String regUserId;
    
    private String regUserNm;
    /** 기안자 erp부서코드 */
    private int regErpDeptSeq;
    
    private String regErpDeptNm;
    /** 사용자 사번 */
    private String regEmpNo;
    /** 등록자부서 코드 */
    private String regDeptCd;
    
    private String regDeptNm;
    /** 전체 금액 */
    private int totalAmt;
    /** 데이터 최종수정자 */
    private int lastUserId;
    
    private String lastUserNm;
    /** 데이터 최종 수정일 */
    private String lastDateTime;
    /** 지출결의서(비용정산)상세 리스트 */
    private List<TiarCostAmtVO> tiarCostAmtList;
    
    private List<FileVO> fileList;
    
}

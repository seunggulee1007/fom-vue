package net.smilegate.fim.vo.account;

import java.util.List;

import lombok.Data;

@Data
public class CompanyCardMasterVO {

	/** 내부코드 */
	private int cardUseSeq;

	/** 법인코드 */
	private int comCd;

	/** 카드번호 */
	private String cardCd;

	/** 정산년월 */
	private String yyyymm;

	/** ERP법인코드  */
	private int erpCompanySeq;

	/** 제목 */
	private String title;

	/** 기안일자 */
	private String regDate;

	/** 기안자 ERP 사원코드  */
	private int regErpEmpSeq;

	/** 기안자 사원 코드 */
	private int regUserId;

	/** 기안자 ERP부서코드 */
	private int regErpDeptSeq;

	/** 사용자사번 */
	private String regEmpNo;

	/** 등록자부서코드 */
	private int regDeptCd;

	/** 데이터 최종수정자 사원코드 */
	private int lastUserId;

	/** 데이터 최종수정일 */
	private String lastDateTime;

	/** 법인카드 상세 리스트 항목 */
	private List<CompanyCardDetailVO> cardDetailList;
}

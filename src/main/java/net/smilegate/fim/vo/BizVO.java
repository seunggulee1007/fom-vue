package net.smilegate.fim.vo;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@Data
@Entity(name="TB_BIZ_CHK_HIST")
@AllArgsConstructor
@NoArgsConstructor
public class BizVO {
    
    /** 사업자 조회 이력 아이디 */
    @Id
    @GeneratedValue(strategy = GenerationType.TABLE)
    @Column(name="BIZ_CHK_HIST_ID")
    private int bizChkHistId;
    /** 사업자 번호 */
    @Column(name="BIZ_NO", length=11)
    private String bizNo;
    /** 조회자 아이디 */
    @Column(name="USER_ID", length=30)
    private String userId;
    /** 조회자 이름 */
    @Column(name="USER_NM", length=30)
    private String userNm;
    /** 조회자 부서 */
    @Column(name="DEPT_NM", length=30)
    private String deptNm;
    /** 요청 서버 */
    @Column(name="REQ_SERVER", length=5)
    private String reqServer;
    /** 결과 값 */
    @Column(name="RESULT_MSG", length=300)
    private String resultMsg;
    /** 결과 상세 메시지 */
    @Column(name="DETAIL_MSG", length=500)
    private String detailMsg;
    /** 결과 상세 메시지 영문 */
    @Column(name="DETAIL_MSG_ENGL", length=500)
    private String detailMsgEngl;
    /** 등록(조회)일자 */
    @Column(name="CRT_DATE", columnDefinition = "DATETIME DEFAULT GETDATE()")
    private Date crtDate;
    @Transient
    private String crtDateStr;
    /** 조회 시작일자 */
    @Transient
    private String searchStdDt;
    /** 조회 종료일자 */
    @Transient
    private String searchEndDt;
    
}

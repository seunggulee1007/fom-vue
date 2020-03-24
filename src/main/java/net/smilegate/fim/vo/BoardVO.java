package net.smilegate.fim.vo;

import java.sql.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Transient;

import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonManagedReference;

import lombok.Data;

@Data
@Entity(name = "TB_BOARD")
@DynamicInsert
@DynamicUpdate
public class BoardVO {

    @Id
    @GeneratedValue(strategy = GenerationType.TABLE)
    @Column(name = "BOARD_ID")
    /** 게시판 ID */
    private int boardId;
    
    @ManyToOne
    @JoinColumn(name="BOARD_MASTER_ID")
    /** 게시판 마스터 ID */
    private BoardMasterVO boardMasterVO;
    
    @Column(name="TITLE", length=300)
    /** 게시글 제목 */
    private String title;
    
    @Column(name="CONT", length=4000)
    /** 게시글 내용 */
    private String cont;
    
    @Column(name="HIT")
    /** 조회수 */
    private int hit;
    
    @Column(name="USER_ID", length=30)
    /** 게시자 */
    private String userId;
    
    @Column(name="USER_NM", length=30)
    /** 게시자 이름 */
    private String userNm;
    
    @Column(name="SEND_MAIL_YN", length=1)
    /** 메일 발송 여부(Y:발송, N:미발송) */
    private String sendMailYn;
    
    @Column(name="CRT_DATE", columnDefinition = "DATETIME DEFAULT GETDATE()")
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd HH:mm:ss", timezone = "Asia/Seoul")
    private Date crtDate;
    
    @Column(name="CHG_DATE", columnDefinition = "DATETIME")
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd HH:mm:ss", timezone = "Asia/Seoul")
    private Date chgDate;
    
    @Transient
    private int masterId;
    
    @Transient
    private List<FileVO> fileList;
    
    @Transient
    private String searchStdDt;
    
    @Transient
    private String searchEndDt;
    
    @Transient
    private String searchKind;
    
    @Transient
    private String search;
    
    @Transient
    private String fileId;
    
    @Transient 
    private String iconSrc;
    
    public void setBoardMasterId(int id) {
        BoardMasterVO boardMasterVO = new BoardMasterVO();
        boardMasterVO.setBoardMasterId(id);
        this.boardMasterVO = boardMasterVO;
    }
    
    @JsonManagedReference
    @OneToMany(fetch = FetchType.EAGER )
    @JoinColumn(name="BOARD_ID")
    private List<FileVO> fileVO;
    
}

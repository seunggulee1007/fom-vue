package net.smilegate.fim.vo;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import lombok.Data;

@Data
@Entity(name="TB_REPLY")
public class ReplyVO {

    @Id
    @GeneratedValue(strategy = GenerationType.TABLE)
    @Column(name="REPLY_ID")
    private int replyId;
    
    @ManyToOne
    @JoinColumn(name="BOARD_ID")
    private BoardVO boardVO;
    
    @ManyToOne
    @JoinColumn(name="PAR_REPLY_ID", referencedColumnName="REPLY_ID")
    private ReplyVO replyVO;
    
    @Column(name="CONT")
    private String cont;
    
    @Column(name="USER_ID", length=30)
    private String userId;
    
    @Column(name="CRT_DATE", columnDefinition = "DATETIME DEFAULT GETDATE()")
    private Date crtDate;
    
    @Column(name="CHG_DATE", columnDefinition = "DATETIME")
    private Date chgDate;
    
}

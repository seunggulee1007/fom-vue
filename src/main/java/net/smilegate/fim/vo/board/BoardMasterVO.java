package net.smilegate.fim.vo.board;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;

import lombok.Data;

@Data
@Entity(name = "TB_BOARD_MASTER")
@DynamicInsert
@DynamicUpdate
public class BoardMasterVO {

    @Id
    @Column(name="BOARD_MASTER_ID")
    private int boardMasterId;
    
    @Column(name="BOARD_TYPE", length=3)
    private String boardType;
    
    @Column(name="BOARD_NM", length=50)
    private String boardNm;
    
    @Column(name="CRT_DATE", columnDefinition = "DATETIME DEFAULT GETDATE()")
    private Date crtDate;
    
    @Column(name="CHG_DATE", columnDefinition = "DATETIME")
    private Date chgDate;
    
}

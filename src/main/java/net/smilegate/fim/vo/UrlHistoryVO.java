package net.smilegate.fim.vo;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

import lombok.Data;

@Entity(name="TB_URL_HISTORY")
@Data
public class UrlHistoryVO {
    
    @Id
    @Column(name="URL_HISTORY_ID")
    private int urlHistoryId;
    
    @Column(name="REQ_URL")
    private String reqUrl;
    
    @Column(name="REQ_USER_ID")
    private String reqUserId;
    
    @Column(name="CRT_DATE", columnDefinition = "DATETIME DEFAULT GETDATE()")
    private Date crtDate;
    
}

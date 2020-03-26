package net.smilegate.fim.vo;

import java.sql.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Transient;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Entity(name="TB_FILE")
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class FileVO {

    @Id
    @GeneratedValue(strategy = GenerationType.TABLE)
    @Column(name ="FILE_ID")
    private int fileId;
    
    @Column(name="FILE_NM", length=100)
    private String fileNm;
    
    @Column(name="ORIGINAL_FILE_NM", length=300)
    private String originalFileNm;
    
    @Column(name="FILE_PATH", length=300)
    private String filePath;
    
    @Column(name="FILE_SIZE")
    private long fileSize;
    
    @Column(name="CONTENT_TYPE")
    private String contentType;
    
    @Column(name="EXTENTION")
    private String extention;
    
    @JsonBackReference
    @ManyToOne
    @JoinColumn(name="BOARD_ID")
    private BoardVO boardVO;
    
    @Column(name="CRT_DATE", columnDefinition = "DATETIME DEFAULT GETDATE()")
    private Date crtDate;
    /** 참조 아이디 값(임시) */
    @Transient
    private int refId;
    
    @Transient
    private int boardId;
    
    @Transient
    @JsonIgnore
    private List<FileVO> insertList;
    
    @Transient
    @JsonIgnore
    private List<FileVO> deleteList;
    
}

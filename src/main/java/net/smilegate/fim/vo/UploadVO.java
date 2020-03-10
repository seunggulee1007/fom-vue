package net.smilegate.fim.vo;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class UploadVO {
    
    private String name;
    
    private String password;
    
    private String note;
    
    private MultipartFile mFile;
    
}
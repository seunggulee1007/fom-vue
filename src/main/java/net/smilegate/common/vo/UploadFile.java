package net.smilegate.common.vo;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class UploadFile {
    private String fileName;
    private String fileDownloadUri;
    private String fileType;
    private long fileSize;
}

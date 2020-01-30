package net.smilegate.common.vo;

import lombok.Data;

@Data
public class EditorContents {
    private long id;
    private String title;
    private String writer;
    private String contents;
    private String createDate;
}

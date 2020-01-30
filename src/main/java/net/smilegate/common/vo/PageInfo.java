package net.smilegate.common.vo;

import java.util.List;

import lombok.Data;

@Data
public class PageInfo<T> {
    //페이지 번호
    private int pageNum;
    //페이지 당 로우 수
    private int rowCount;
    //총데이터 수
    private int totalRowCount;

    List<T> data;
}

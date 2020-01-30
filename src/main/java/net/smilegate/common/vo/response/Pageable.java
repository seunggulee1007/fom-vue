package net.smilegate.common.vo.response;

import java.util.List;

import net.smilegate.common.vo.Result;

public class Pageable<T> extends Result<T> {
    private static final long serialVersionUID = 1L;
    private int crtPage;// 현재 페이지
    private int rows;// 페이지 당 레코드 수
    private int totalPages;// 총 페이지 수
    private int records;// 총 레코드 수
    private int offset;
    private List<T> data;

    public void calculateOffset() {
	if(crtPage >= 1) {
	    offset = (crtPage - 1) * rows;
	}
    }
}

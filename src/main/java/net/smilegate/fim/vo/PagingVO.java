package net.smilegate.fim.vo;

import lombok.Data;

@Data
public class PagingVO {
    /** 전체 글 갯수 */
    private int totalCnt;
    /** 한 페이지에 보여줄 글 갯수 */
    private int listCnt = 10;
    /** 전체 페이지 */
    private int totalPage;
    /** 현재 페이지 */
    private int pageNo;
    /** 페이지 시작 번호 */
    private int startPage;
    /** 페이지 끝 번호 */
    private int endPage;
    /** 페이지 보여줄 갯수 (하단) */
    private int pageCnt = 10;
    /** 검색조건 시작 날짜 */
    private String searchStdDt;
    /** 검색조건 종료 날짜 */
    private String searchEndDt;
    /** 검색어 */
    private String searchKeyword;
    /** 검색 종류 */
    private String searchKind;
    
    public void calcPage(int totalCnt) {
        this.totalCnt = totalCnt;
        totalPage = totalCnt / listCnt;
        if(totalCnt % listCnt > 0) {
            totalPage ++;
        }
        if(totalPage < pageNo) {
            pageNo = totalPage;
        }
        startPage = ((pageNo-1) / pageCnt) * pageCnt +1;
        endPage = startPage + pageCnt -1;
        if(endPage > totalPage) {
            endPage = totalPage;
        }
    }
}

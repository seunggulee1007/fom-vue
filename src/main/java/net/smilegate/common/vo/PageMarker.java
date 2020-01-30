package net.smilegate.common.vo;

import lombok.Data;

/**
 * @package        net.smilegate.help.domain.common
 * @filename    PageMarker.java
 * @author        정보개발팀 박주연
 * @date        2019. 8. 1.
 * @see            페이징처리를 위한 vo
 *                 Criteria 포함. calc를 통해 정보를 초기화  
 */

@Data
public class PageMarker {
    
    private int displayPageCnt = 10; //화면에 보여질 페이지 번호 수
    private int totalDataCnt; //게시물 수
    private int startPage; //현재 페이지 기준 시작 페이지 번호
    private int endPage; //현재 페이지 기준 끝 페이지 번호
    private boolean prev; //이전 버튼 활성화 여부
    private boolean next; //다음 버튼 활성화 여부
    private Criteria cri;
    
    public PageMarker(Criteria cri) {
        this.cri = cri;
    }

    public void setTotalDataCnt(int totalDataCnt) {
        this.totalDataCnt = totalDataCnt;
        calc(); 
    }

    //startPage, endPage, prev, next 계산
    public void calc() {
        //예: 현재 페이지가 13이면 13/10 = 1.3 올림-> 2 끝페이지는 2*10=20
        endPage = (int)(Math.ceil(cri.getPage()/(double)displayPageCnt)*displayPageCnt);
        
        //예: 현재 페이지가 13이면 20-10 +1 = 11 
        startPage = endPage - displayPageCnt + 1 ;
        
        //총 페이지 갯수
        //예: 전체 게시물 수가 88개이면 88/10=8.8 올림-> 9
        int tempEndPage = (int)(Math.ceil(totalDataCnt / (double)cri.getPerPageNum()));
        
        //만약 계산된 끝 페이지 번호보다 실제 사용되는 페이지 수가 더 작으면 실제 사용될 페이지 번호만 보여줌
        if(endPage > tempEndPage) {
            endPage = tempEndPage;
        }

        next = (cri.getPage() == tempEndPage ? false : true) ;
        prev = (cri.getPage() == 1 ? false :  true);
    }

    @Override
    public String toString() {
        return "{\"displayPageCnt\":\"" + displayPageCnt + "\", \"totalDataCnt\":\"" + totalDataCnt 
                + "\", \"startPage\":\"" + startPage + "\", \"endPage\":\"" + endPage 
                + "\", \"prev\":\"" + prev + "\", \"next\":\"" + next
                + "\", \"cri\":" + cri + "}";
    }
    
}
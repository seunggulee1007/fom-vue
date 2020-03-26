package net.smilegate.fim;

import net.smilegate.fim.vo.PagingVO;

public class TestJava {

    public static void main(String[] args) {
        // TODO Auto-generated method stub
        PagingVO pagingVO = new PagingVO();
        pagingVO.setPageNo(1);
        pagingVO.calcPage(4);
        System.err.println(pagingVO.toString());
    }

}

package net.smilegate.fim;

import java.util.ArrayList;
import java.util.List;
import java.util.function.Predicate;
import java.util.stream.Collectors;

import net.smilegate.fim.vo.common.PagingVO;

public class TestJava {

    public static void main(String[] args) {
        // TODO Auto-generated method stub
        PagingVO pagingVO = new PagingVO();
        pagingVO.setPageNo(1);
        pagingVO.calcPage(4);
        System.err.println(pagingVO.toString());
        
        List<Integer> a = new ArrayList<>();
        List<Integer> b = new ArrayList<>();
        a.add(1);
        a.add(2);
        a.add(3);
        a.add(4);
        
        b.add(1);
        b.add(3);
        
        List<Integer> compareList = a.stream().filter(e -> b.stream().noneMatch(Predicate.isEqual(e))).collect(Collectors.toList());
        
        System.err.println(compareList.toString());
    }

}

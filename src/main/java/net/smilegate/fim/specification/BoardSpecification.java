package net.smilegate.fim.specification;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.sql.Date;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import org.springframework.data.jpa.domain.Specification;

import net.smilegate.fim.vo.BoardVO;

public class BoardSpecification {
    
    public static Specification<BoardVO> searchWith(BoardVO boardVO) {
        return (Specification<BoardVO>) ((root, query, builder) -> {
            List<Predicate> predicate = getPredicateWithKeyword(boardVO, root, builder);
            return builder.and(predicate.toArray(new Predicate[0]));
        });
    }

    private static List<Predicate> getPredicateWithKeyword(BoardVO boardVO, Root<BoardVO> root, CriteriaBuilder builder) {
        List<Predicate> predicate = new ArrayList<>();
        Date startDate = Date.valueOf(boardVO.getSearchStdDt());
        Date endDate = Date.valueOf(boardVO.getSearchEndDt());
        Calendar c = Calendar.getInstance();
        c.setTime(endDate);
        c.add(Calendar.DATE, 1);
        endDate = new Date(c.getTimeInMillis());
        String search = boardVO.getSearch();
        String searchKind = boardVO.getSearchKind();
        
        try {
            search = "%"+URLDecoder.decode(search, "UTF-8") +"%";
        } catch (UnsupportedEncodingException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        if(search.indexOf("[") != -1) { 
            search = search.replaceAll("\\[", "\\[[]"); 
        }
        if("titleAndCont".equals(boardVO.getSearchKind()) ) {
            predicate.add(builder.like(root.get("title"), search));
            predicate.add(builder.or(builder.like(root.get("cont"), search)));
        }
        if("title".equals(searchKind)) {
            predicate.add(builder.like(root.get("title"), search));
        }else if("cont".equals(searchKind)) {
            predicate.add(builder.like(root.get("cont"), search));
        }else if("userNm".equals(searchKind)) {
            predicate.add(builder.like(root.get("userNm"), search));
        }
        predicate.add(builder.between(root.get("crtDate"), startDate, endDate));
        return predicate;
    }

}

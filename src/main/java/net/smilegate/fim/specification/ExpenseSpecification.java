package net.smilegate.fim.specification;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import org.springframework.data.jpa.domain.Specification;

import net.smilegate.fim.vo.ExpenseVO;

public class ExpenseSpecification {
    
    public static Specification<ExpenseVO> searchWith(Map<String, Object> searchKeyword) {
        return (Specification<ExpenseVO>) ((root, query, builder) -> {
            List<Predicate> predicate = getPredicateWithKeyword(searchKeyword, root, builder);
            return builder.and(predicate.toArray(new Predicate[0]));
        });
    }

    private static List<Predicate> getPredicateWithKeyword(Map<String, Object> searchKeyword, Root<ExpenseVO> root, CriteriaBuilder builder) {
        List<Predicate> predicate = new ArrayList<>();
        for (String key : searchKeyword.keySet()) {
            predicate.add(builder.like(root.get(key), "%"+searchKeyword.get(key)+"%"));
        }
        return predicate;
    }

}

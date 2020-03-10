package net.smilegate.fim.mappers.fim;

import java.sql.Date;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import net.smilegate.fim.vo.BoardVO;

@Mapper
public interface JpaBoardMapper extends JpaRepository<BoardVO, Integer> {

    Page<BoardVO> findByCrtDateBetween(Pageable pageable, Date start, Date end);
    
    Page<BoardVO> findByCrtDateBetweenAndTitleLike(Pageable pageable, Date start, Date end, String title);
    
    Page<BoardVO> findByCrtDateBetweenAndContLike(Pageable pageable, Date start, Date end, String cont);
    
    Page<BoardVO> findByCrtDateBetweenAndTitleLikeOrContLike(Pageable pageable, Date start, Date end, String title, String cont);

    Page<BoardVO> findByCrtDateBetweenAndUserNmLike(Pageable pageable, Date start, Date end, String search);
    
}


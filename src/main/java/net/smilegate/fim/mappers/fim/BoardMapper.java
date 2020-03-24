package net.smilegate.fim.mappers.fim;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import net.smilegate.fim.vo.BoardVO;

@Mapper
public interface BoardMapper {
    
    /**
     * 게시글 등록
     * @param boardVO
     * @return
     */
    public int insertBoard(BoardVO boardVO);
    
    /**
     * 조회수 카운트 증가
     * @param boardId
     * @return
     */
    public int updateBoardHit(@Param("boardId")int boardId);
    
    public List<BoardVO> selectBoardList(BoardVO boardVO);
    
}

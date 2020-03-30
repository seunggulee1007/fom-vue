package net.smilegate.fim.service.board;

import java.util.Map;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import net.smilegate.fim.vo.board.BoardVO;
import net.smilegate.fim.vo.common.CommonResultVO;

public interface BoardService {
    
    /**
     * 게시판 등록
     * @param request
     * @param boardVO
     * @return
     */
    public CommonResultVO writeBoard(MultipartHttpServletRequest request , BoardVO boardVO);
    
    /* public CommonResultVO infoList(Pageable pageable, BoardVO boardVO); */
    /**
     * 게시판 리스트 조회
     * @param boardVO
     * @return
     */
    public CommonResultVO boardList(BoardVO boardVO);
    
    /**
     * 게시글 조회 
     * @param boardId
     * @return
     */
    public Map<String, Object> selectBoard(int boardId);
    
}

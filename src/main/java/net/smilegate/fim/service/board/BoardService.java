package net.smilegate.fim.service.board;

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
    
    public CommonResultVO boardList(BoardVO boardVO);
    
}

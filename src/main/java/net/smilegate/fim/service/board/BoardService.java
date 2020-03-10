package net.smilegate.fim.service.board;

import org.springframework.data.domain.Pageable;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import net.smilegate.fim.vo.BoardVO;
import net.smilegate.fim.vo.CommonResultVO;

public interface BoardService {
    
    /**
     * 게시판 등록
     * @param request
     * @param boardVO
     * @return
     */
    public CommonResultVO writeInfo(MultipartHttpServletRequest request , BoardVO boardVO);
    
    public CommonResultVO infoList(Pageable pageable, BoardVO boardVO);
    
}

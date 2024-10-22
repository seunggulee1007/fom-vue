package net.smilegate.fim.controller.portalmanagement;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import io.swagger.annotations.Api;
import lombok.RequiredArgsConstructor;
import net.smilegate.fim.service.board.BoardService;
import net.smilegate.fim.vo.board.BoardVO;
import net.smilegate.fim.vo.common.CommonResultVO;

/**
 * 포털 관리 기능 용 컨트롤러
 * @author es-seungglee
 *
 */

@RestController
@Api(tags = {"2. 포털 관리"})
@RequestMapping("/portalManagement")
@RequiredArgsConstructor
public class PortalManagementProcController {
    
    private final BoardService boardService;
    
    @PostMapping("/info")
    public CommonResultVO writeInfo(MultipartHttpServletRequest request , BoardVO boardVO ) {
        return  boardService.writeBoard(request, boardVO);
    }
    
    @GetMapping("/infoList")
    public CommonResultVO infoList(BoardVO boardVO) {
        return boardService.boardList(boardVO);
    }
    
    @GetMapping("/info/{boardId}")
    public CommonResultVO info(@PathVariable("boardId") int boardId) {
        return CommonResultVO.builder().data(boardService.selectBoard(boardId)).build();
    }
    
    /*
     * @GetMapping("/infoList") public CommonResultVO infoList(@PageableDefault(sort
     * = { "boardId" }, direction = Direction.DESC, size = 10) Pageable pageable,
     * BoardVO boardVO) { return boardService.infoList(pageable, boardVO); }
     */
}

package net.smilegate.fim.service.board;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import lombok.RequiredArgsConstructor;
import net.smilegate.common.util.StringUtil;
import net.smilegate.fim.mappers.fim.BoardMapper;
import net.smilegate.fim.mappers.fim.JpaBoardMapper;
import net.smilegate.fim.service.file.board.FileService;
import net.smilegate.fim.specification.BoardSpecification;
import net.smilegate.fim.util.FileUtil;
import net.smilegate.fim.vo.FileVO;
import net.smilegate.fim.vo.board.BoardVO;
import net.smilegate.fim.vo.common.CommonResultVO;

@Service
@RequiredArgsConstructor
public class BoardServiceImpl implements BoardService {

    private final BoardMapper boardMapper;
    private final FileService fileService;
    private final FileUtil fileUtil;
    private final JpaBoardMapper jpaBoardMapper;

    /**
     * 게시판 등록
     * 
     * @param request
     * @param boardVO
     * @return
     */
    @Transactional(value = "fimTransactionManager")
    public CommonResultVO writeBoard(MultipartHttpServletRequest request, BoardVO boardVO) {
        boardVO.setBoardMasterId(boardVO.getMasterId());
        boardVO.setUserId("admin"); // rbac에서 가져온 값.
        boardVO.setUserNm("관리자");
        if (boardMapper.insertBoard(boardVO) > 0) { // 게시물 등록이 성공한다면
            List<FileVO> fileVoList = fileUtil.makeFileVO(request); // 파일을 만들고 업로드 이후 저장할 정보 가져와서
            for (FileVO fileVO : fileVoList) {
                fileVO.setBoardId(boardVO.getBoardId());    // 해당 게시판 아이디를 연결
                fileService.insertFile(fileVO); // 저장
            }
        }

        return CommonResultVO.builder().build();
    }

    public CommonResultVO infoList(Pageable pageable, BoardVO boardVO) {
        Map<String, Object> map = new HashMap<>();
        /*
         * String searchKind = boardVO.getSearchKind(); String search =
         * boardVO.getSearch(); try { search = URLDecoder.decode(search, "UTF-8"); }
         * catch (UnsupportedEncodingException e) { // TODO Auto-generated catch block
         * e.printStackTrace(); }
         */
        Page<BoardVO> boardList = jpaBoardMapper.findAll(BoardSpecification.searchWith(boardVO), pageable);

        /*
         * Date startDate = Date.valueOf(boardVO.getSearchStdDt()); Date endDate =
         * Date.valueOf(boardVO.getSearchEndDt()); Calendar c = Calendar.getInstance();
         * c.setTime(endDate); c.add(Calendar.DATE, 1); endDate = new
         * Date(c.getTimeInMillis()); Page<BoardVO> boardList = null; if
         * (StringUtils.isNotEmpty(search)) { search = "%" + search + "%"; if
         * (search.indexOf("[") != -1) { search = search.replaceAll("\\[", "\\[[]"); }
         * switch (searchKind) { case "title": boardList =
         * jpaBoardMapper.findByCrtDateBetweenAndTitleLike(pageable, startDate, endDate,
         * search); break; case "cont": boardList =
         * jpaBoardMapper.findByCrtDateBetweenAndContLike(pageable, startDate, endDate,
         * search); break; case "titleAndCont": boardList =
         * jpaBoardMapper.findByCrtDateBetweenAndTitleLikeOrContLike(pageable,
         * startDate, endDate, search, search); break; case "userNm": boardList =
         * jpaBoardMapper.findByCrtDateBetweenAndUserNmLike(pageable, startDate,
         * endDate, search); break; }
         * 
         * } else { boardList = jpaBoardMapper.findByCrtDateBetween(pageable, startDate,
         * endDate); }
         */
        map.put("boardList", boardList);

        return CommonResultVO.builder().data(map).build();
    }
    
    /**
     * 게시판 리스트 조회
     */
    public CommonResultVO boardList(BoardVO boardVO) {
        Map<String, Object> map = new HashMap<>();
        
        String search = boardVO.getSearch();
        if (StringUtil.isNotEmpty(search)) {
            search = "%" + search + "%";
            if (search.indexOf("[") != -1) {            // 데이터베이스에서 like 절을 사용할때 [가 오면 와일드카드의 집합 또는 단일문자로 읽기 때문에 []로 다시 감싸주는 작업을 해야 한다. 
                search = search.replaceAll("\\[", "\\[[]");
            }
        }
        map.put("boardList", boardMapper.selectBoardList(boardVO));
        return CommonResultVO.builder().data(map).build();
    }
    
    
}

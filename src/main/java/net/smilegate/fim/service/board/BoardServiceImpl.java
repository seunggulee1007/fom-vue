package net.smilegate.fim.service.board;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.sql.Date;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import lombok.RequiredArgsConstructor;
import net.smilegate.fim.mappers.fim.BoardMapper;
import net.smilegate.fim.mappers.fim.JpaBoardMapper;
import net.smilegate.fim.service.file.FileService;
import net.smilegate.fim.util.FileUtil;
import net.smilegate.fim.vo.BoardVO;
import net.smilegate.fim.vo.CommonResultVO;
import net.smilegate.fim.vo.FileVO;

@Service
@RequiredArgsConstructor
public class BoardServiceImpl implements BoardService {
    
    private final BoardMapper boardMapper;
    private final FileService fileService;
    private final FileUtil fileUtil;
    private final JpaBoardMapper jpaBoardMapper;
    
    /**
     * 게시판 등록
     * @param request
     * @param boardVO
     * @return
     */
    @Transactional(value = "fimTransactionManager")
    public CommonResultVO writeInfo(MultipartHttpServletRequest request , BoardVO boardVO) {
        boardVO.setBoardMasterId(boardVO.getMasterId());
        boardVO.setUserId("admin"); // rbac에서 가져온 값.
        boardVO.setUserNm("관리자");
        if(boardMapper.insertBoard(boardVO) > 0) {                  // 게시물 등록이 성공한다면
            List<FileVO> fileVoList = fileUtil.makeFileVO(request); // 파일을 만들고 업로드 이후 저장할 정보 가져와서
            for(FileVO fileVO : fileVoList) {
                fileVO.setBoardVO(boardVO);                         // 해당 게시판 아이디를 연결
                fileService.insertFile(fileVO);                     // 저장
            }
        }
        
        
        return CommonResultVO.builder().build();
    }
    
    public CommonResultVO infoList(Pageable pageable, BoardVO boardVO) {
        Map<String, Object> map = new HashMap<>();
        String searchKind = boardVO.getSearchKind();
        String search = boardVO.getSearch();
        try {
            search = URLDecoder.decode(search, "UTF-8");
        } catch (UnsupportedEncodingException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        Date startDate = Date.valueOf(boardVO.getSearchStdDt());
        Date endDate = Date.valueOf(boardVO.getSearchEndDt());
        Calendar c = Calendar.getInstance();
        c.setTime(endDate);
        c.add(Calendar.DATE, 1);
        endDate = new Date(c.getTimeInMillis());
        Page<BoardVO> boardList = null;
        if(StringUtils.isNotEmpty(search)) {
            search = "%" + search + "%";
            if(search.indexOf("[") != -1) {
                search = search.replaceAll("\\[", "\\[[]");
            }
            switch (searchKind) {
                case "title" : 
                    boardList = jpaBoardMapper.findByCrtDateBetweenAndTitleLike(pageable, startDate, endDate, search);
                    break;
                case "cont" : 
                    boardList = jpaBoardMapper.findByCrtDateBetweenAndContLike(pageable, startDate, endDate, search);
                    break;
                case "titleAndCont" :
                    boardList = jpaBoardMapper.findByCrtDateBetweenAndTitleLikeOrContLike(pageable, startDate, endDate, search, search);
                    break;
                case "userNm" : 
                    boardList = jpaBoardMapper.findByCrtDateBetweenAndUserNmLike(pageable, startDate, endDate, search);
                    break;
            }
            
        }else {
            boardList = jpaBoardMapper.findByCrtDateBetween(pageable, startDate, endDate);
        }
        map.put("boardList", boardList);
        
        return CommonResultVO.builder().data(map).build();
    }
}

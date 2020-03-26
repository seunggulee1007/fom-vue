package net.smilegate.fim.service.expense;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import lombok.RequiredArgsConstructor;
import net.smilegate.fim.mappers.fim.TiarCostAmtLogMapper;
import net.smilegate.fim.mappers.fim.TiarCostAmtMapper;
import net.smilegate.fim.mappers.fim.TiarCostLogMapper;
import net.smilegate.fim.mappers.fim.TiarCostMapper;
import net.smilegate.fim.service.file.FileService;
import net.smilegate.fim.util.CommonUtil;
import net.smilegate.fim.util.FileUtil;
import net.smilegate.fim.vo.FileVO;
import net.smilegate.fim.vo.PagingVO;
import net.smilegate.fim.vo.TiarCostAmtLogVO;
import net.smilegate.fim.vo.TiarCostAmtVO;
import net.smilegate.fim.vo.TiarCostLogVO;
import net.smilegate.fim.vo.TiarCostVO;

@RequiredArgsConstructor
@Service
@Transactional(value="fimTransactionManager")
public class ExpenseServiceImpl implements ExpenseService {
    
    private final TiarCostMapper tiarCostMapper;
    private final TiarCostLogMapper tiarCostLogMapper;
    private final TiarCostAmtMapper tiarCostAmtMapper;
    private final TiarCostAmtLogMapper tiarCostAmtLogMapper;
    private final FileService fileService;
    private final FileUtil fileUtil;
    
    /**
     * 지출결의서 저장
     * @param request
     * @param tiarCostVO
     * @return
     * @throws IllegalArgumentException
     * @throws IllegalAccessException
     */
    public Map<String, Object> insertExpense(MultipartHttpServletRequest request ,TiarCostVO tiarCostVO) throws IllegalArgumentException, IllegalAccessException {
        Map<String, Object> map = new HashMap<String, Object>();
        
        if(tiarCostMapper.insertTiarCost(tiarCostVO) > 0 ) {
            int tiCostSeq = tiarCostVO.getTiCostSeq();      // 지출결의서 내부 키
            TiarCostLogVO tiarCostLogVO = new TiarCostLogVO();
            tiarCostLogVO = (TiarCostLogVO) CommonUtil.copyObject(tiarCostVO, tiarCostLogVO);
            tiarCostLogMapper.insertTiarCostLog(tiarCostLogVO);
            for(TiarCostAmtVO tiarCostAmtVO : tiarCostVO.getTiarCostAmtList()) {
                tiarCostAmtVO.setTiCostSeq(tiCostSeq);
                if(tiarCostAmtMapper.insertTiarCostAmt(tiarCostAmtVO) > 0) {
                    TiarCostAmtLogVO tiarCostAmtLogVO = new TiarCostAmtLogVO();
                    tiarCostAmtLogVO = (TiarCostAmtLogVO) CommonUtil.copyObject(tiarCostAmtVO, tiarCostAmtLogVO);
                    tiarCostAmtLogMapper.insertTiarCostAmtLog(tiarCostAmtLogVO);
                }
            }
            List<FileVO> fileVOList = fileUtil.makeFileVO(request);
            for(FileVO fileVO : fileVOList) {
                fileVO.setRefId(tiCostSeq);
                fileService.insertFile(fileVO);
            }
        }
        
        map.put("tiarCostVO", tiarCostVO);
        
        return map;
    }
    
    /**
     * 지출결의서 수정
     * @param request
     * @param tiarCostVO
     * @return
     * @throws IllegalArgumentException
     * @throws IllegalAccessException
     */
    public Map<String, Object> updateExpense(MultipartHttpServletRequest request ,TiarCostVO tiarCostVO) throws IllegalArgumentException, IllegalAccessException {
        Map<String, Object> map = new HashMap<String, Object>();
        int tiCostSeq = tiarCostVO.getTiCostSeq();
        TiarCostVO compareTiarCostVO = tiarCostMapper.selectTiarCostByTiCostSeq(tiCostSeq);
        if(!CommonUtil.compareObject(tiarCostVO, compareTiarCostVO)) {
            if(tiarCostMapper.updateTiarCost(tiarCostVO) > 0) {
                // TODO 이력 쌓기
                TiarCostLogVO tiarCostLogVO = new TiarCostLogVO();
                tiarCostLogVO = (TiarCostLogVO) CommonUtil.copyObject(tiarCostVO, tiarCostLogVO);
                tiarCostLogMapper.insertTiarCostLog(tiarCostLogVO);
            }
        }
        for(TiarCostAmtVO tiarCostAmtVO : tiarCostVO.getTiarCostAmtList()) {
            int tiCostSerl = tiarCostAmtVO.getTiCostSerl();
            TiarCostAmtVO compareTiarCostAmtVO = tiarCostAmtMapper.selectTiarCostAmtBySeq(tiCostSeq, tiCostSerl);
            
            if(!CommonUtil.compareObject(tiarCostAmtVO, compareTiarCostAmtVO)) {
                if(tiarCostAmtMapper.updateTiarCostAmt(tiarCostAmtVO) > 0) {
                    // TODO 이력쌓기
                    TiarCostAmtLogVO tiarCostAmtLogVO = new TiarCostAmtLogVO();
                    tiarCostAmtLogVO = (TiarCostAmtLogVO) CommonUtil.copyObject(tiarCostAmtVO, tiarCostAmtLogVO);
                    tiarCostAmtLogMapper.insertTiarCostAmtLog(tiarCostAmtLogVO);
                }
            }
        }
        map.put("tiarCostVO", tiarCostVO);
        return map;
    }
    
    /**
     * 지출결의서 조회
     * @param tiCostSeq
     * @return
     */
    public Map<String, Object> selectExpense(int tiCostSeq){
        Map<String, Object> map = new HashMap<>();
        map.put("tiarCostVO", tiarCostMapper.selectTiarCostByTiCostSeq(tiCostSeq));
        map.put("tiCostAmtVOList", tiarCostAmtMapper.selectTiarCostAmtByTiarCostSeq(tiCostSeq));
        FileVO fileVO = new FileVO();
        fileVO.setRefId(tiCostSeq);
        map.put("fileList", fileService.selectFileList(fileVO));
        return map;
    }
 
    /**
     * 지출결의서 내역 조회
     * @param pagingVO
     * @return
     */
    public Map<String, Object> selectExpenseHitoryList(PagingVO pagingVO) {
        Map<String, Object> map = new HashMap<>();
        System.err.println(pagingVO.getPageNo());
        int totalCnt = tiarCostMapper.selectTiarCostByPagingCnt(pagingVO);
        List<TiarCostVO> expenseHistory = null;
        if(totalCnt > 0) {
            pagingVO.calcPage(totalCnt);
            expenseHistory = tiarCostMapper.selectTiarCostByPaging(pagingVO);
        }
        System.err.println(pagingVO.getPageNo());
        map.put("expenseHistoryList", expenseHistory);
        map.put("pagingVO", pagingVO);
        
        return map;
    }
}

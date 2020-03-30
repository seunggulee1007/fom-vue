package net.smilegate.fim.service.expense;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.function.Predicate;
import java.util.stream.Collectors;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import lombok.RequiredArgsConstructor;
import net.smilegate.fim.mappers.fim.tiarcost.TiarCostAmtLogMapper;
import net.smilegate.fim.mappers.fim.tiarcost.TiarCostAmtMapper;
import net.smilegate.fim.mappers.fim.tiarcost.TiarCostLogMapper;
import net.smilegate.fim.mappers.fim.tiarcost.TiarCostMapper;
import net.smilegate.fim.service.file.tiarcost.TiarCostFileService;
import net.smilegate.fim.util.CommonUtil;
import net.smilegate.fim.util.FileUtil;
import net.smilegate.fim.vo.FileVO;
import net.smilegate.fim.vo.common.PagingVO;
import net.smilegate.fim.vo.tiarcost.TiarCostAmtLogVO;
import net.smilegate.fim.vo.tiarcost.TiarCostAmtVO;
import net.smilegate.fim.vo.tiarcost.TiarCostLogVO;
import net.smilegate.fim.vo.tiarcost.TiarCostVO;

@RequiredArgsConstructor
@Service
@Transactional(value="fimTransactionManager")
public class ExpenseServiceImpl implements ExpenseService {
    
    // 지출결의서 mapper
    private final TiarCostMapper tiarCostMapper;
    // 지출결의 로그 mapper
    private final TiarCostLogMapper tiarCostLogMapper;
    // 지출결의 상세 mapper
    private final TiarCostAmtMapper tiarCostAmtMapper;
    // 지출결의 상세 로그 mapper
    private final TiarCostAmtLogMapper tiarCostAmtLogMapper;
    // 지출결의 파일 저장용 서비스
    private final TiarCostFileService tiarCostFileService;
    // 파일 util
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
            tiarCostLogVO = (TiarCostLogVO) CommonUtil.copyObject(tiarCostVO, tiarCostLogVO);           // 로그를 쌓기 위해 기존 내역의 값을 로그 vo에 복사 시킨다.
            tiarCostLogMapper.insertTiarCostLog(tiarCostLogVO);                                         // 로그를 쌓는다.
            for(TiarCostAmtVO tiarCostAmtVO : tiarCostVO.getTiarCostAmtList()) {                        // 지출상세 내역이 있다면
                tiarCostAmtVO.setTiCostSeq(tiCostSeq);
                if(tiarCostAmtMapper.insertTiarCostAmt(tiarCostAmtVO) > 0) {                            // 지출결의 상세 내역을 저장후
                    TiarCostAmtLogVO tiarCostAmtLogVO = new TiarCostAmtLogVO();
                    tiarCostAmtLogVO = (TiarCostAmtLogVO) CommonUtil.copyObject(tiarCostAmtVO, tiarCostAmtLogVO);
                    tiarCostAmtLogMapper.insertTiarCostAmtLog(tiarCostAmtLogVO);                        // 로그를 샇는다.
                }
            }
            // 파일을 물리적 경로에 만들고 해당 내용을  vo로 만들어서 가져온다.
            List<FileVO> fileVOList = fileUtil.makeFileVO(request);
            for(FileVO fileVO : fileVOList) {
                fileVO.setRefId(tiCostSeq);
                tiarCostFileService.insertFile(fileVO);
            }
            tiarCostVO.setFileList(fileVOList);
            map.put("fileList", fileVOList);
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
        
        TiarCostVO compareTiarCostVO = tiarCostMapper.selectTiarCostByTiCostSeq(tiCostSeq);         // 현재 데이터 베이스에 저장되어 있는 내용 조회
        if(!CommonUtil.compareObject(tiarCostVO, compareTiarCostVO)) {                              // 두 내용을 비교후 일치하지 않는다면
            if(tiarCostMapper.updateTiarCost(tiarCostVO) > 0) {                                     // 데이터베이스에 내용을 수정한 후
                TiarCostLogVO tiarCostLogVO = new TiarCostLogVO();
                tiarCostLogVO = (TiarCostLogVO) CommonUtil.copyObject(tiarCostVO, tiarCostLogVO);
                tiarCostLogMapper.insertTiarCostLog(tiarCostLogVO);                                 // 로그 내역을 쌓는다
            }
        }
        
        /**
         * 상세 내역이 추가 되거나 삭제 될 수 있으므로 비교 로직을 작성
         */
        // 화면에서 받아온 값들 중 지출결의상세 내부번호가 생성자 초기값인 0이 아닌 건들만 추려서 리스트로 담는다.
        List<Integer> originList = tiarCostVO.getTiarCostAmtList().stream().map(ti-> ti.getTiCostSerl()).filter(t -> t != 0).collect(Collectors.toList());
        // 마찬가지로 데이터 베이스에서 해당 지출결의서 내부 번호로 된 값들을 조회하여 지출결의 상세 내부번호만 추려서 리스트에 담는다.
        List<Integer> costAmtList = tiarCostAmtMapper.selectTiarCostAmtByTiarCostSeq(tiCostSeq).stream().map(ti-> ti.getTiCostSerl()).collect(Collectors.toList());
        // 만약 추가된 내용이 있다면 지출결의 상세 내부번호는 초기 값인 0일것이므로 항상 데이터베이스에서 가져온 값이 많거나 같으므로 데이터베이스에서 가져온 값을 기준으로 필터링을 한다.
        List<Integer> compareList = costAmtList.stream().filter(compare ->
                    originList.stream().noneMatch(Predicate.isEqual(compare))).collect(Collectors.toList());
        for(int tiCostSerl : compareList) {                                 // 다른 값이 있다면 화면에서 삭제되었다는 뜻이므로
            tiarCostAmtMapper.deleteTiarCostAmt(tiCostSeq, tiCostSerl);     // 데이터 베이스에서 삭제
        }
        
        for(TiarCostAmtVO tiarCostAmtVO : tiarCostVO.getTiarCostAmtList()) {        // 삭제된 내역들을 처리한 이후 새로운 내용인지 기존 내용을 수정해야 하는지 처리 하기 위해 화면에서 받아온 값들을 반복문 처리
            
            int tiCostSerl = tiarCostAmtVO.getTiCostSerl();                         // 지출결의 상세 내부 번호
            boolean flag = true;
            if(tiarCostAmtVO.getTiCostSerl() == 0) {                                // 초기값인 0이라면 저장 대상자 이므로 
                tiarCostAmtVO.setTiCostSeq(tiCostSeq);
                tiarCostAmtMapper.insertTiarCostAmt(tiarCostAmtVO);                 // 저장
            }else {                                                                 // 그렇지 않다면 기존에 저장된 값이므로
                TiarCostAmtVO compareTiarCostAmtVO = tiarCostAmtMapper.selectTiarCostAmtBySeq(tiCostSeq, tiCostSerl);       // 비교를 위한 해당 지출결의 상세 내부번호의 값을 데이터 베이스에서 읽어 온다.
                if(!CommonUtil.compareObject(tiarCostAmtVO, compareTiarCostAmtVO)) {                                        // 두개의 값을 비교한 뒤 다르다면
                    tiarCostAmtMapper.updateTiarCostAmt(tiarCostAmtVO);                                                     // 수정을 한다.
                }
                flag = false;
            }
            // 저장 플래그가 참이라면 로그도 쌓는다.
            if(flag) {
                TiarCostAmtLogVO tiarCostAmtLogVO = new TiarCostAmtLogVO();
                tiarCostAmtLogVO = (TiarCostAmtLogVO) CommonUtil.copyObject(tiarCostAmtVO, tiarCostAmtLogVO);
                tiarCostAmtLogMapper.insertTiarCostAmtLog(tiarCostAmtLogVO);
            }
        }
        
        // 파일을 물리적 경로에 만들고 해당 내용을  vo로 만들어서 가져온다.
        List<FileVO> fileVOList = fileUtil.makeFileVO(request);
        for(FileVO fileVO : fileVOList) {
            fileVO.setRefId(tiCostSeq);
            tiarCostFileService.insertFile(fileVO);
        }
        if(fileVOList.size() > 0) {
            tiarCostVO.setFileList(fileVOList);
            map.put("fileList", fileVOList);
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
        map.put("tiarCostVO", tiarCostMapper.selectTiarCostByTiCostSeq(tiCostSeq));                 // 지출결의 내역
        map.put("tiCostAmtVOList", tiarCostAmtMapper.selectTiarCostAmtByTiarCostSeq(tiCostSeq));    // 지출결의 상세 내역
        FileVO fileVO = new FileVO();
        fileVO.setRefId(tiCostSeq);
        map.put("fileList", tiarCostFileService.selectFileList(fileVO));                            // 파일 리스트
        return map;
    }
 
    /**
     * 지출결의서 내역 조회
     * @param pagingVO
     * @return
     */
    public Map<String, Object> selectExpenseHitoryList(PagingVO pagingVO) {
        Map<String, Object> map = new HashMap<>();
        int totalCnt = tiarCostMapper.selectTiarCostByPagingCnt(pagingVO);      // 페이징 처리를 위한 총 건수를 가져온다.
        List<TiarCostVO> expenseHistory = null;                                 // 기본 값
        if(totalCnt > 0) {                                                      // 글 건수가 하나라도 있다면
            pagingVO.calcPage(totalCnt);                                        // 페이징 처리 후
            expenseHistory = tiarCostMapper.selectTiarCostByPaging(pagingVO);   // 해당 조건으로 글을 데이터베이스에서 조회.
        }
        map.put("expenseHistoryList", expenseHistory);
        map.put("pagingVO", pagingVO);
        
        return map;
    }
    
    /**
     * 지출결의 내역 삭제
     * @param tiCostSeq
     * @return
     */
    public boolean deleteExpense(int tiCostSeq) {
        tiarCostFileService.deleteTiarCostFileByRefId(tiCostSeq);
        tiarCostAmtMapper.deleteTiarCostAmtByTiCostSeq(tiCostSeq);
        return tiarCostMapper.deleteTiarCostByTiarCostSeq(tiCostSeq) > 0;
    }
    
}

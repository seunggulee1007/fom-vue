package net.smilegate.fim.service.expense;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import lombok.RequiredArgsConstructor;
import net.smilegate.fim.mappers.fim.TiarCostAmtMapper;
import net.smilegate.fim.mappers.fim.TiarCostMapper;
import net.smilegate.fim.service.file.FileService;
import net.smilegate.fim.util.CommonUtil;
import net.smilegate.fim.util.FileUtil;
import net.smilegate.fim.vo.FileVO;
import net.smilegate.fim.vo.TiarCostAmtVO;
import net.smilegate.fim.vo.TiarCostVO;

@RequiredArgsConstructor
@Service
@Transactional(value="fimTransactionManager")
public class ExpenseServiceImpl implements ExpenseService {
    
    private final TiarCostMapper tiarCostMapper;
    private final TiarCostAmtMapper tiarCostAmtMapper;
    private final FileService fileService;
    private final FileUtil fileUtil;
    
    public Map<String, Object> insertExpense(MultipartHttpServletRequest request ,TiarCostVO tiarCostVO) {
        Map<String, Object> map = new HashMap<String, Object>();
        
        if(tiarCostMapper.insertTiarCost(tiarCostVO) > 0 ) {
            int tiCostSeq = tiarCostVO.getTiCostSeq();      // 지출결의서 내부 키
            
            for(TiarCostAmtVO tiarCostAmtVO : tiarCostVO.getTiarCostAmtList()) {
                tiarCostAmtVO.setTiCostSeq(tiCostSeq);
                tiarCostAmtMapper.insertTiarCostAmt(tiarCostAmtVO);
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
    
    public Map<String, Object> updateExpense(MultipartHttpServletRequest request ,TiarCostVO tiarCostVO) throws IllegalArgumentException, IllegalAccessException {
        Map<String, Object> map = new HashMap<String, Object>();
        int tiCostSeq = tiarCostVO.getTiCostSeq();
        TiarCostVO compareTiarCostVO = tiarCostMapper.selectTiarCostByTiCostSeq(tiCostSeq);
        System.err.println(compareTiarCostVO.toString());
        if(!CommonUtil.compareObject(tiarCostVO, compareTiarCostVO)) {
            if(tiarCostMapper.updateTiarCost(tiarCostVO) > 0) {
                // TODO 이력 쌓기
            }
        }
        for(TiarCostAmtVO tiarCostAmtVO : tiarCostVO.getTiarCostAmtList()) {
            int tiCostSerl = tiarCostAmtVO.getTiCostSerl();
            TiarCostAmtVO compareTiarCostAmtVO = tiarCostAmtMapper.selectTiarCostAmtBySeq(tiCostSeq, tiCostSerl);
            System.err.println(compareTiarCostAmtVO.toString());
            
            if(!CommonUtil.compareObject(tiarCostAmtVO, compareTiarCostAmtVO)) {
                if(tiarCostAmtMapper.updateTiarCostAmt(tiarCostAmtVO) > 0) {
                    // TODO 이력쌓기
                }
            }
        }
        return map;
    }
}

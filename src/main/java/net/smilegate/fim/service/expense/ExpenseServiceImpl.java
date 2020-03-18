package net.smilegate.fim.service.expense;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import lombok.RequiredArgsConstructor;
import net.smilegate.fim.mappers.fim.TiarCostAmtMapper;
import net.smilegate.fim.mappers.fim.TiarCostMapper;
import net.smilegate.fim.service.file.FileService;
import net.smilegate.fim.util.FileUtil;
import net.smilegate.fim.vo.FileVO;
import net.smilegate.fim.vo.TiarCostAmtVO;
import net.smilegate.fim.vo.TiarCostVO;

@RequiredArgsConstructor
@Service
public class ExpenseServiceImpl implements ExpenseService {
    
    private final TiarCostMapper tiarCostMapper;
    private final TiarCostAmtMapper tiarCostAmtMapper;
    private final FileService fileService;
    private final FileUtil fileUtil;
    
    public Map<String, Object> insertExpense(MultipartHttpServletRequest request ,TiarCostVO tiarCostVO) {
        Map<String, Object> map = new HashMap<String, Object>();
        
        if(tiarCostMapper.insertTiarCostMapper(tiarCostVO) > 0 ) {
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
        
        return map;
    }
}

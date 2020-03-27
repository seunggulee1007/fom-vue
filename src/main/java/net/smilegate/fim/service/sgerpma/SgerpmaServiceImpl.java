/**
 * 
 */
package net.smilegate.fim.service.sgerpma;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import net.smilegate.fim.mappers.sgerpma.SgerpmaMapper;
import net.smilegate.fim.vo.ExpenseVO;

/**
 * @author es-seungglee
 *
 */
@Service
@RequiredArgsConstructor
public class SgerpmaServiceImpl implements SgerpmaService {

    private final SgerpmaMapper sgerpmaMapper;
    
    /**
     * 공통 (SFG제외) 비용매핑정보 조회
     * @Param expenseVO
     * @return Map<String, Object>
     */
    @Override
    public Map<String, Object> selectResultCostMap(ExpenseVO expenseVO) {
        Map<String, Object> map = new HashMap<>();
        List<ExpenseVO> expenseList = null;
        String imwonYn = sgerpmaMapper.getImwonCheck(expenseVO.getUserNm());            // 임원 여부를 확인한다.
        if("N".equals(imwonYn)) {                                                       // 임원이 아니라면
            if("C0000000".equals(expenseVO.getComCd())) {                               // 희망법인인지 아닌지 확인한다.
                expenseList = sgerpmaMapper.selectResultCostMap1(expenseVO);
            }else {
                expenseList = sgerpmaMapper.selectResultCostMap(expenseVO);
            }
        }else {
            expenseList = sgerpmaMapper.selectResultCardCostMap(expenseVO);
        }
        map.put("expenseList", expenseList);
        return map; 
    }

    /**
     * 비용매핑정보 조회(activityNm)
     * @Param expenseVO
     * @return Map<String, Object>
     */
    @Override
    public Map<String, Object> selectResultCostMapByActivityNm(ExpenseVO expenseVO) {
        // TODO Auto-generated method stub
        Map<String, Object> map = new HashMap<>();
        List<ExpenseVO> expenseList = null;
        String imwonYn = sgerpmaMapper.getImwonCheck(expenseVO.getUserNm());            // 임원 여부를 확인
        if("N".equals(imwonYn)) {                                                       // 임원이 아니라면
            if("C0000000".equals(expenseVO.getComCd())) {                               // 희망법인인지 확인한다.
                expenseList = sgerpmaMapper.selectResultCostMap1ByActivityNm(expenseVO);
            }else {
                expenseList = sgerpmaMapper.selectResultCostMapByActivityNm(expenseVO);
            }
        }else {
            expenseList = sgerpmaMapper.selectResultCardCostMapByActivityNm(expenseVO);
        }
        map.put("expenseList", expenseList);
        return map; 
    }


    /**
     * 임원 여부 확인
     * @param userNm
     * @return Map<String, Object>
     */
    @Override
    public Map<String, Object> getImwonCheck(String userNm) {
        Map<String, Object> map = new HashMap<>();
        map.put("imwonYn", sgerpmaMapper.getImwonCheck(userNm));
        return map;
    }

}

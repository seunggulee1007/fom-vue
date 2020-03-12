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
        String imwonYn = sgerpmaMapper.getImwonCheck(expenseVO.getUserNm());
        if("N".equals(imwonYn)) {
            if("C0000000".equals(expenseVO.getComCd())) {
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
     * SFG 비용매핑정보 조회
     * @Param expenseVO
     * @return Map<String, Object>
     */
    @Override
    public Map<String, Object> selectResultCostMap1(ExpenseVO expenseVO) {
        // TODO Auto-generated method stub
        Map<String, Object> map = new HashMap<>();
        map.put("expenseList", sgerpmaMapper.selectResultCostMap1(expenseVO));
        return map; 
    }

    /**
     * 임원 비용매핑 정보 조회
     * @Param expenseVO
     * @return
     */
    @Override
    public Map<String, Object> selectResultCardCostMap(ExpenseVO expenseVO) {
        Map<String, Object> map = new HashMap<>();
        map.put("expenseList", sgerpmaMapper.selectResultCardCostMap(expenseVO));
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

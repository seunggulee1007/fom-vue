package net.smilegate.fim.service.sgerp;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import net.smilegate.fim.enums.Currency;
import net.smilegate.fim.mappers.sgerp.SgerpMapper;
import net.smilegate.fim.vo.UserVO;

@RequiredArgsConstructor
@Service
public class SgerpServiceImpl implements SgerpService {

    private final SgerpMapper sgerpMapper;
    
    /**
     * 환율 정보 조회
     * @author es-seungglee
     * @param reqMap
     * @return
     */
    public Map<String, Object> selectExRate(String exRateDate) {
        Map<String, Object> map = new HashMap<String, Object>();
        
        try {
            
            List<Map<String, String>> exRateList = sgerpMapper.selectExRate(exRateDate);            // erp데이터베이스에서 환율 정보 조회
            
            for(Map<String, String> exRate : exRateList) {
                String currName = exRate.get("CurrName");                                       // 통화
                Optional<String> optional = Optional.ofNullable(Currency.valueOf(currName).getCurrNm());        // null처리를 하기 위한 optional 객체 생성
                exRate.put("KorCurrName", optional.orElse(""));                                 // 한글 통화명을 담는다.
            }
            
            
            map.put("exRateList", exRateList);
            
        }catch (Exception e) {
            e.printStackTrace();
        }
        
        return map;
    }
    
    /**
     * 은행 정보 조회
     * @param userVO
     * @return
     */
    public Map<String, Object> getBankInfo(UserVO userVO) {
        Map<String, Object> map = new HashMap<>();
        map.put("bankInfoVO", sgerpMapper.callBankInfo(userVO));
        return map;
    }
    
}

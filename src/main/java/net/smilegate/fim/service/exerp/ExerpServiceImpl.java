package net.smilegate.fim.service.exerp;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.smilegate.fim.enums.Currency;
import net.smilegate.fim.mappers.sgerp.SgerpMapper;

@Service
public class ExerpServiceImpl implements ExerpService {

    @Autowired
    private SgerpMapper sgerpMapper;
    
    public Map<String, Object> selectExRate(Map<String, String> reqMap) {
        Map<String, Object> map = new HashMap<String, Object>();
        
        try {
            
            List<Map<String, String>> exRateList = sgerpMapper.selectExRate(reqMap); 
            for(Map<String, String> exRate : exRateList) {
                String currName = exRate.get("CurrName");
                Currency currency = Currency.valueOf(currName);
                exRate.put("KorCurrName", currency.getCurrNm()+" " + currName);
            }
            map.put("exRateList", exRateList);
            
        }catch (Exception e) {
            e.printStackTrace();
        }
        
        return map;
    }
}

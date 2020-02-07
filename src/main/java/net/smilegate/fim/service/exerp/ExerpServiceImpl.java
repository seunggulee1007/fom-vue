package net.smilegate.fim.service.exerp;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import org.apache.commons.lang3.StringUtils;
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
            
            String search = reqMap.getOrDefault("search", "").toUpperCase();
            if(StringUtils.isNotEmpty(search)) {
                exRateList = exRateList.stream().filter(exRate -> exRate.get("KorCurrName").indexOf(search) != -1).collect(Collectors.toList());
            }
            map.put("exRateList", exRateList);
            
        }catch (Exception e) {
            e.printStackTrace();
        }
        
        return map;
    }
}

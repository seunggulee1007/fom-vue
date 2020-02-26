package net.smilegate.fim.service.exerp;

import java.util.Map;

/**
 * 
 * @author es-seungglee
 *
 */
public interface ExerpService {
    
    /**
     * 환율 정보 조회
     * @author es-seungglee
     * @param exReteDate
     * @return
     */
    public Map<String, Object> selectExRate( String exRateDate);
    
}

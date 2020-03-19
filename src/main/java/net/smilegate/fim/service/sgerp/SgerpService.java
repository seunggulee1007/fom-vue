package net.smilegate.fim.service.sgerp;

import java.util.Map;

import net.smilegate.fim.vo.UserVO;

/**
 * 
 * @author es-seungglee
 *
 */
public interface SgerpService {
    
    /**
     * 환율 정보 조회
     * @author es-seungglee
     * @param exReteDate
     * @return
     */
    public Map<String, Object> selectExRate( String exRateDate);
    
    /**
     * 은행 정보 조회
     * @param userVO
     * @return
     */
    public Map<String, Object> getBankInfo(UserVO userVO);
    
}

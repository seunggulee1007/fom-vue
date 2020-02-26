package net.smilegate.fim.service.hometax;

import java.util.Map;

public interface HomeTaxService {
    
    /**
     * @apiNote 넘겨진 사업자 번호로 사업자 등록상태 조회하는 함수
     * @author es-seungglee
     * @param busnpNo
     * @return
     */
    public Map<String, Object> getBizInfo(String serverName, String busnpNo);
    
}

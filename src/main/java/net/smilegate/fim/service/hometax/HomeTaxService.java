package net.smilegate.fim.service.hometax;

import java.util.Map;

public interface HomeTaxService {
    
    public Map<String, Object> getBusnpInfo(String busnpNo) throws Exception;
    
    public Map<String, Object> getBusnpList() throws Exception;
    
}

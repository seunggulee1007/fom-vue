package net.smilegate.fim.service.mdi;

import java.util.Map;

public interface MdiService {
    
    public Map<String, Object> selectDeptList();
    
    public Map<String, Object> selectUserList(String deptCd);
    
}
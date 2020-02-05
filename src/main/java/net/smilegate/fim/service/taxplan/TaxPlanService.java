package net.smilegate.fim.service.taxplan;

import java.util.Map;

public interface TaxPlanService {
    
    /**
     * 국세청 월별 세무 일정 클롤링
     */
    public void getNtsInfo();
    
    public Map<String, Object> getTaxPlan();
    
}

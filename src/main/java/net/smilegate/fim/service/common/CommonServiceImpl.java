package net.smilegate.fim.service.common;

import java.util.Map;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import net.smilegate.fim.mappers.fim.CommonMapper;

@Service
@RequiredArgsConstructor
public class CommonServiceImpl implements CommonService {

    private final CommonMapper commonMapper;
    
    public Map<String, Object> selectBudgetDeptInfo(String comCd, String deptCd) {
        return commonMapper.selectBudgetDeptInfo(comCd, deptCd);
    }
}

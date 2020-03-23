package net.smilegate.fim.service.mdi;

import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import net.smilegate.fim.mappers.mdi.MdiMapper;
import net.smilegate.fim.vo.DeptVO;

@RequiredArgsConstructor
@Service
public class MdiServiceImpl implements MdiService {
    
    private final MdiMapper mdiMapper;
    
    public Map<String, Object> selectDeptList() {
        Map<String, Object> map = new HashMap<>();
        List<DeptVO> deptList = mdiMapper.selectDeptList();
        
        for(DeptVO deptVO : deptList) {
            deptVO.setChild(deptList.stream().filter(dept -> dept.getParentCd().equals(deptVO.getDeptCd())).collect(Collectors.toList()));
        }
        deptList = deptList.stream()
                            .filter(dept -> 1 == dept.getDeptLevel())
                            .sorted(
                                    Comparator.comparing((DeptVO deptVO) -> deptVO.getDeptSort()))
                            .collect(Collectors.toList());
        map.put("deptList", deptList);
        return map;
    }
    
    public Map<String, Object> selectUserList(String deptCd) {
        Map<String, Object> map = new HashMap<>();
        
        map.put("userList", mdiMapper.selectUserList(deptCd));
        
        return map;
    }
    
}

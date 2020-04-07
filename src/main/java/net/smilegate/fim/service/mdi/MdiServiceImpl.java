package net.smilegate.fim.service.mdi;

import java.util.Comparator;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import net.smilegate.fim.mappers.mdi.MdiMapper;
import net.smilegate.fim.vo.UserVO;
import net.smilegate.fim.vo.common.ComVO;
import net.smilegate.fim.vo.common.DeptVO;

@RequiredArgsConstructor
@Service
public class MdiServiceImpl implements MdiService {
    
    private final MdiMapper mdiMapper;
    
    /**
     * 부서 조회
     * @return
     */
    public List<DeptVO> selectDeptList() {
        List<DeptVO> deptList = mdiMapper.selectDeptList();
        
        for(DeptVO deptVO : deptList) {         // 해당 부서 내역은 계층형이 아니므로 부모 코드와 부서코드가 일치한다면 자식 리스트로 만들어서 vo에 담아준다.
            deptVO.setChildren(deptList.stream().filter(dept -> dept.getParentCd().equals(deptVO.getDeptCd())).collect(Collectors.toList()));
        }
        
        // 현재 필요한 내용은 가장 최상위 층의 부서가 갖고 있는 tree구조만 필요하므로 해당 내용만 필터링 처리하고 정렬을 한다.
        deptList = deptList.stream()
                            .filter(dept -> 1 == dept.getDeptLevel())
                            .sorted(
                                    Comparator.comparing(DeptVO::getDeptSort))  // 내림차순으로 하고 싶다면 comparator메서드 뒤에 reversed()메서드를 추가하면 된다. 조건을 추가 하고 싶다면 thenComparing메서드로 추가
                            .collect(Collectors.toList());
        return deptList;
    }
    
    /**
     * 해당 부서 소속 사용자 조회
     * @param deptCd
     * @return
     */
    public List<UserVO> selectUserList(String deptCd) {
        return mdiMapper.selectUserList(deptCd);
    }
    
    /**
     * 법인 리스트 조회
     * @return
     */
    public List<ComVO> selectComList() {
        return mdiMapper.selectComList();
    }
    
}

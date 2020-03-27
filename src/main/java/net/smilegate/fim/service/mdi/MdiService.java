package net.smilegate.fim.service.mdi;

import java.util.List;

import net.smilegate.fim.vo.UserVO;
import net.smilegate.fim.vo.common.ComVO;
import net.smilegate.fim.vo.common.DeptVO;

public interface MdiService {
    
    /**
     * 부서 조회
     * @return
     */
    public List<DeptVO> selectDeptList();
    
    /**
     * 해당 부서 소속 사용자 조회
     * @param deptCd
     * @return
     */
    public List<UserVO> selectUserList(String deptCd);
    
    /**
     * 법인 리스트 조회
     * @return
     */
    public List<ComVO> selectComList();
    
}

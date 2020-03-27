package net.smilegate.fim.mappers.mdi;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import net.smilegate.fim.vo.UserVO;
import net.smilegate.fim.vo.common.ComVO;
import net.smilegate.fim.vo.common.DeptVO;

@Mapper
public interface MdiMapper {

    public List<DeptVO> selectDeptList();

    public List<UserVO> selectUserList(@Param("deptCd") String deptCd);

    public List<ComVO> selectComList();
    
}

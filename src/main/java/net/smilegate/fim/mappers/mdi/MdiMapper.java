package net.smilegate.fim.mappers.mdi;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import net.smilegate.fim.vo.DeptVO;
import net.smilegate.fim.vo.UserVO;

@Mapper
public interface MdiMapper {

    public List<DeptVO> selectDeptList();

    public List<UserVO> selectUserList(@Param("deptCd") String deptCd);

}

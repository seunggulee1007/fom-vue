package net.smilegate.fim.mappers.mdi;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import net.smilegate.fim.vo.DeptVO;

@Mapper
public interface MdiMapper {
    
    public List<DeptVO> selectDeptList();
    
}

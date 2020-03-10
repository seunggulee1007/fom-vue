package net.smilegate.fim.mappers.fim;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import net.smilegate.fim.vo.BizVO;

@Mapper
public interface BizMapper {
    
    public int insertBizInfo(BizVO bizVO);
    
    public List<BizVO> selectBizInfoList(BizVO bizVO);
    
}

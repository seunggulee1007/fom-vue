package net.smilegate.fim.mappers.fim;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import net.smilegate.fim.vo.BizVO;

@Mapper
public interface BizMapper {
    
    /**
     * 사업자 휴폐업 조회 이력 저장
     * @param bizVO
     * @return
     */
    public int insertBizInfo(BizVO bizVO);
    
    /**
     * 사업자 휴폐업 조회 이력 조회
     * @param bizVO
     * @return
     */
    public List<BizVO> selectBizInfoList(BizVO bizVO);
    
}

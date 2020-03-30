package net.smilegate.fim.mappers.fim;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import net.smilegate.fim.vo.BizVO;
import net.smilegate.fim.vo.common.PagingVO;

@Mapper
public interface BizMapper {
    
    /**
     * 사업자 휴폐업 조회 이력 저장
     * @param bizVO
     * @return
     */
    public int insertBizInfo(BizVO bizVO);
    
    /**
     * 휴폐업 조회 이력 카운트
     * @param pagingVO
     * @param bizVO
     * @return
     */
    public int selectBizInfoCnt(@Param("pagingVO")PagingVO pagingVO, @Param("bizVO")BizVO bizVO);
    
    /**
     * 사업자 휴폐업 조회 이력 조회
     * @param bizVO
     * @return
     */
    public List<BizVO> selectBizInfoList(@Param("pagingVO")PagingVO pagingVO, @Param("bizVO")BizVO bizVO);
    
}

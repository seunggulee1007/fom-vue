package net.smilegate.fim.mappers.fim;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import net.smilegate.fim.vo.UrlHistoryVO;

@Mapper
public interface UrlHistoryMapper {
    
    /**
     * url 이력 저장
     * @param urlHistoryVO
     * @return
     */
    public int insertUrlHistory(UrlHistoryVO urlHistoryVO);
    
    /**
     * url 이력 조회
     * @param userId
     * @return
     */
    public List<UrlHistoryVO> selectUrlHistortList(@Param("regUserId") String userId);
    
}

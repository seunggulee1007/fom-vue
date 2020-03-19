package net.smilegate.fim.mappers.sgerp;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import net.smilegate.fim.vo.UserVO;

@Mapper
public interface SgerpMapper {
    
    /**
     * 환율 조회
     * @param exRateDate
     * @return
     */
    List<Map<String, String>> selectExRate(@Param("exRateDate") String exRateDate);
    
    /**
     * 은행 계좌 정보 조회
     * @param userVO
     * @return
     */
    public Map<String, String> callBankInfo(UserVO userVO);
    
}

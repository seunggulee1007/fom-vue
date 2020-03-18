package net.smilegate.fim.mappers.sgerp;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import net.smilegate.fim.vo.UserVO;

@Mapper
public interface SgerpMapper {
    
    List<Map<String, String>> selectExRate(@Param("exRateDate") String exRateDate);
    
    public Map<String, String> callBankInfo(UserVO userVO);
    
}

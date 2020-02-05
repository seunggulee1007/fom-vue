package net.smilegate.fim.mappers.sgerp;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface SgerpMapper {
    
    List<Map<String, String>> selectExRate(Map<String, String> reqMap);
    
}

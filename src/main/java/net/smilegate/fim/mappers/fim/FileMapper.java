package net.smilegate.fim.mappers.fim;

import org.apache.ibatis.annotations.Mapper;

import net.smilegate.fim.vo.FileVO;

@Mapper
public interface FileMapper {
    
    /**
     * 파일 저장
     * @param filedVO
     * @return
     */
    public int insertFile(FileVO fileVO);
    
}

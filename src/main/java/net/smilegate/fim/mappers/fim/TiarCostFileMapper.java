package net.smilegate.fim.mappers.fim;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import net.smilegate.fim.vo.FileVO;

@Mapper
public interface TiarCostFileMapper {
    
    /**
     * 파일 저장
     * @param filedVO
     * @return
     */
    public int insertFile(FileVO fileVO);
    
    public List<FileVO> selectFileList(FileVO fileVO);
    
}

package net.smilegate.fim.mappers.fim;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import net.smilegate.fim.vo.board.FileVO;

@Mapper
public interface FileMapper {
    
    /**
     * 파일 저장
     * @param filedVO
     * @return
     */
    public int insertFile(FileVO fileVO);
    
    public List<FileVO> selectFileList(FileVO fileVO);
    
}

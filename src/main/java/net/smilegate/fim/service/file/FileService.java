package net.smilegate.fim.service.file;

import java.util.List;

import net.smilegate.fim.vo.FileVO;

public interface FileService {
    
    public int insertFile(FileVO fileVO);
    
    public List<FileVO> selectFileList(FileVO fileVO);
    
}

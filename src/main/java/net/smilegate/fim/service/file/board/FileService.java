package net.smilegate.fim.service.file.board;

import java.util.List;

import net.smilegate.fim.vo.board.FileVO;

public interface FileService {
    
    public int insertFile(FileVO fileVO);
    
    public List<FileVO> selectFileList(FileVO fileVO);
    
}

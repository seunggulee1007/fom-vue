package net.smilegate.fim.service.file.tiarcost;

import java.util.List;

import net.smilegate.fim.vo.board.FileVO;

public interface TiarCostFileService {

    public int insertFile(FileVO fileVO);
    
    public List<FileVO> selectFileList(FileVO fileVO);
    
    public int deleteTiarCostFileByFileId(int fileId);
    
}

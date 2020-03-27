package net.smilegate.fim.service.file.tiarcost;

import java.util.List;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import net.smilegate.fim.mappers.fim.TiarCostFileMapper;
import net.smilegate.fim.vo.board.FileVO;

@Service
@RequiredArgsConstructor
public class TiarCostFileServiceImpl implements TiarCostFileService {

    private final TiarCostFileMapper tiarCostFileMapper;
    
    public int insertFile(FileVO fileVO) {
        return tiarCostFileMapper.insertFile(fileVO);
    }
    
    public List<FileVO> selectFileList(FileVO fileVO) {
        return tiarCostFileMapper.selectFileList(fileVO);
    }
    
    public int deleteTiarCostFileByFileId(int fileId) {
        return tiarCostFileMapper.deleteFileByFileId(fileId);
    }
    
}

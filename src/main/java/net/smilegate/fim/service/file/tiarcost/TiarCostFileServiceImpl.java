package net.smilegate.fim.service.file.tiarcost;

import java.util.List;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import net.smilegate.fim.mappers.fim.tiarcost.TiarCostFileMapper;
import net.smilegate.fim.vo.FileVO;

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
    
    /**
     * 파일 삭제 (연관 아이디)
     * @param refId
     * @return
     */
    public int deleteTiarCostFileByRefId(int refId) {
        return tiarCostFileMapper.deleteFileByRefId(refId);
    }
    
}

package net.smilegate.fim.service.file.board;

import java.util.List;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import net.smilegate.fim.mappers.fim.FileMapper;
import net.smilegate.fim.vo.FileVO;

@Service
@RequiredArgsConstructor
public class FileServiceImpl implements FileService {
    
    private final FileMapper fileMapper;
    
    public int insertFile(FileVO fileVO) {
        return fileMapper.insertFile(fileVO);
    }
    
    public List<FileVO> selectFileList(FileVO fileVO) {
        return fileMapper.selectFileList(fileVO);
    }
    
}

package net.smilegate.fim.service.file.tiarcost;

import java.util.List;

import net.smilegate.fim.vo.FileVO;

public interface TiarCostFileService {
    
    /**
     * 파일 저장
     * @param fileVO
     * @return
     */
    public int insertFile(FileVO fileVO);
    
    /**
     * 파일 리스트 조회
     * @param fileVO
     * @return
     */
    public List<FileVO> selectFileList(FileVO fileVO);
    
    /**
     * 파일 삭제(파일 아이디)
     * @param fileId
     * @return
     */
    public int deleteTiarCostFileByFileId(int fileId);
    
    /**
     * 파일 삭제 (연관 아이디)
     * @param refId
     * @return
     */
    public int deleteTiarCostFileByRefId(int refId);
    
}

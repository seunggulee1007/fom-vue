package net.smilegate.fim.mappers.fim.tiarcost;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import net.smilegate.fim.vo.board.FileVO;

@Mapper
public interface TiarCostFileMapper {
    
    /**
     * 파일 저장
     * @param filedVO
     * @return
     */
    public int insertFile(FileVO fileVO);
    
    /**
     * 지출결의 일련번호에 해당되는 파일 리스트 조회
     * @param fileVO
     * @return
     */
    public List<FileVO> selectFileList(FileVO fileVO);
    
    /**지출결의 일련번호에 해당되는 파일 전체 삭제
     * 
     * @param refId
     * @return
     */
    public int deleteFileByRefId(@Param("refId")int refId);
    
    /**
     * 파일 일련번호에 해당하는 파일 삭제
     * @param fileId
     * @return
     */
    public int deleteFileByFileId(@Param("fileId")int fileId);
    
}

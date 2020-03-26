package net.smilegate.fim.util;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang3.RandomStringUtils;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import net.smilegate.fim.vo.FileVO;

@Component
public class FileUtil {
    
    @Value("${file.upload-dir}")
    private String SAVE_PATH;             // 국세청 url 주소
    
    /**
     * 파일 업로드
     * @param request
     * @return
     */
    public List<FileVO> makeFileVO(MultipartHttpServletRequest request) {
        Iterator<String> fileNames = request.getFileNames();
        List<FileVO> fileVOList = new ArrayList<>();            // 여러개 파일일 때를 대비한 list
        while(fileNames.hasNext()) {
            String fileName = fileNames.next();
            
            List<MultipartFile> fileList = request.getFiles(fileName);
            for(MultipartFile mFile : fileList) {
                String sourceFileName = mFile.getOriginalFilename();                // 실제 파일 이름
                String sourceFileNameExtension = FilenameUtils
                        .getExtension(sourceFileName)
                        .toLowerCase();                 // 파일 확장자
                String destinationFileName = RandomStringUtils
                        .randomAlphanumeric(32) 
                        + "." + sourceFileNameExtension;    // 저장될  파일 이름(확장자 포함)
                
                File file = new File(SAVE_PATH + destinationFileName);              // 저장할 파일 생성
                
                if(mFile.getSize() != 0) {                                          // file null check
                    if(!file.exists()) {                                            // 해당 경로가 존재하는지 판단 후
                        if(file.getParentFile().mkdirs()) {                         // 경로에 해당하는 디렉토리들을 생성
                            try {
                                file.createNewFile();                                   // 파일 생성
                            }catch (IOException e) {
                                e.printStackTrace();
                            }
                        }
                    }
                }
                try {
                    mFile.transferTo(file);                                         // 실제 경로에 multipartFile을 전송
                }catch (IllegalStateException e) {
                    e.printStackTrace();
                }catch (IOException e) {
                    e.printStackTrace();
                }
                
                FileVO fileVO = FileVO.builder()
                        .fileNm(destinationFileName)                // 변환된 파일 이름
                        .fileSize(mFile.getSize())                  // 파일 크기
                        .originalFileNm(mFile.getOriginalFilename())// 실제 파일이름    
                        .extention(sourceFileNameExtension)         // 확장자
                        .filePath(SAVE_PATH)                        // 저장경로
                        .build();
                
                fileVOList.add(fileVO);
            }
        }
        return fileVOList;
    }
    
    public FileVO makeFileVO(List<FileVO> newFileVO, List<FileVO> dbFileVO) {
        FileVO fileVO = new FileVO();
        
        
        
        return fileVO;
    }
}

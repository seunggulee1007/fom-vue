package net.smilegate.common.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import lombok.extern.slf4j.Slf4j;
import net.smilegate.common.service.UploadService;
import net.smilegate.common.vo.UploadFile;

@Slf4j
@Controller
@RequestMapping("common")
public class FileUploadController {
    @Autowired
    private UploadService uploadService;

    @GetMapping("/upload/file")
    public String fileUploadView() {
    	return "common/upload/file";
    }

    /**
     * 싱글 파일 업로드
     *
     * @param file
     * @return
     */
    @PostMapping("/upload/file")
    public UploadFile uploadSingleFile(@RequestParam("file") MultipartFile file) {
		log.debug("uploaded file info: {} ", file.getOriginalFilename());
		String fileName = uploadService.store(file);
		String downloadUri = ServletUriComponentsBuilder.fromCurrentContextPath().
			path("/common/download-file").path(fileName).toUriString();
	
		return new UploadFile(fileName, downloadUri, file.getContentType(), file.getSize());
    }

    /**
     * 멀티플 파일 업로드
     *
     * @param files
     * @return
     */
    @ResponseBody
    @PostMapping("/upload/files/")
    public List<UploadFile> uploadMultipleFiles(@RequestParam("files") MultipartFile[] files) {
    	return Arrays.asList(files).stream().map(file -> uploadSingleFile(file)).collect(Collectors.toList());
    }

    @GetMapping("/download-file/{fileName:.+}")
    public ResponseEntity<Resource> downloadFile(@PathVariable String fileName, HttpServletRequest request) throws UnsupportedEncodingException {
		// 파일 로딩
		Resource resource = uploadService.loadAsResource(fileName);
		String contentType = null;
		try {
		    contentType = request.getServletContext().getMimeType(resource.getFile().getAbsolutePath());
		} catch (IOException ex) {
		    log.info("Could not determine file type.");
		}
	
		// 파일 타입 확인이 안되는 경우 기본 형 설정
		if (contentType == null) {
		    contentType = MediaType.APPLICATION_OCTET_STREAM_VALUE;
		}
	
		return ResponseEntity.ok().contentType(MediaType.parseMediaType(contentType))
			.header(HttpHeaders.CONTENT_DISPOSITION, "attachment; filename=\""
				+ URLEncoder.encode(resource.getFilename(), StandardCharsets.UTF_8.toString()) + "\"")
			.body(resource);
    }

}

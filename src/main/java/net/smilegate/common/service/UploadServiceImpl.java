package net.smilegate.common.service;

import java.io.IOException;
import java.net.MalformedURLException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.stream.Stream;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.Resource;
import org.springframework.core.io.UrlResource;
import org.springframework.stereotype.Service;
import org.springframework.util.FileSystemUtils;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;

@Service
public class UploadServiceImpl implements UploadService {
    private final Path UPLOAD_PATH;

    public UploadServiceImpl(@Value("${file.upload-dir}") String uploadDir) {
        this.UPLOAD_PATH = Paths.get(uploadDir);
        init();
    }

    @Override
    public String store(MultipartFile file) {
    	return store(file, null);
    }

    @Override
    public String store(MultipartFile file, String directoryName) {
		try {
	            if (file.isEmpty()) {
	                throw new FileUploadException("File is empty " + file.getOriginalFilename());
	            }
	            String fileName = StringUtils.cleanPath(file.getOriginalFilename());
	            Path directory = UPLOAD_PATH;
	            if(directoryName != null) {
	        	directory = UPLOAD_PATH.resolve(directoryName);
	        	if(Files.notExists(directory)) {
	        	    Files.createDirectories(directory);
	        	}
	            }
	            Path target = directory.resolve(fileName);
	            // 동일 이름의 파일 존재시 새 파일로 업데이트 함
	            Files.copy(file.getInputStream(), target, StandardCopyOption.REPLACE_EXISTING);
	            return fileName;
	        } catch (IOException e) {
	            throw new FileUploadException("Failed to store file " + file.getOriginalFilename(), e);
	        }
    }

    @Override
    public Resource loadAsResource(String filename) {
    	return loadAsResource(filename, null);
    }

    @Override
    public Resource loadAsResource(String filename, String directoryName) {
        try {
            Path file = directoryName == null ? load(filename) : load(filename, directoryName);
            Resource resource = new UrlResource(file.toUri());
            if(resource.exists() || resource.isReadable()) {
                return resource;
            } else {
                throw new FileNotFoundException("Could not found file: " + filename);
            }
        } catch (MalformedURLException e) {
            throw new FileNotFoundException("Could not found file: " + filename, e);
        }
    }

    @Override
    public Stream<Path> loadAll() {
        try {
            return Files.walk(this.UPLOAD_PATH, 1)
                    .filter(path -> !path.equals(this.UPLOAD_PATH))
                    .map(path -> this.UPLOAD_PATH.relativize(path));
        } catch (IOException e) {
            throw new FileUploadException("Failed to read stored files", e);
        }

    }

    @Override
    public void deleteAll() {
        FileSystemUtils.deleteRecursively(UPLOAD_PATH.toFile());
    }

    private void init() {
        try {
            if(Files.notExists(UPLOAD_PATH)) {
        	Files.createDirectory(UPLOAD_PATH);
            }
        } catch (IOException e) {
            throw new FileUploadException("Could not initialize storage", e);
        }
    }

    private Path load(String filename) {
        return UPLOAD_PATH.resolve(filename).normalize();
    }

    private Path load(String filename, String directoryName) {
    	return UPLOAD_PATH.resolve(directoryName).resolve(filename).normalize();
    }

}

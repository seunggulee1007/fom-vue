package net.smilegate.common.service;

import java.nio.file.Path;
import java.util.stream.Stream;

import org.springframework.core.io.Resource;
import org.springframework.web.multipart.MultipartFile;

public interface UploadService {
    String store(MultipartFile file);
    String store(MultipartFile file, String directoryName);
    Resource loadAsResource(String filename);
    Resource loadAsResource(String filename, String directoryName);
    Stream<Path> loadAll();
    void deleteAll();
}
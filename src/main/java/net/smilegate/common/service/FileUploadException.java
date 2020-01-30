package net.smilegate.common.service;

public class FileUploadException extends RuntimeException {
    private static final long serialVersionUID = -6535715336358714427L;

    public FileUploadException(String message) {
        super(message);
    }

    public FileUploadException(String message, Throwable cause) {
        super(message, cause);
    }
}
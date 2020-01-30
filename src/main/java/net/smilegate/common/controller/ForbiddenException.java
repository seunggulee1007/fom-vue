package net.smilegate.common.controller;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@ResponseStatus(HttpStatus.FORBIDDEN)
public class ForbiddenException extends RuntimeException {
    private static final long serialVersionUID = 723590138015976743L;

    public ForbiddenException() {
    	super();
    }

    public ForbiddenException(String message) {
    	super(message);
    }
}

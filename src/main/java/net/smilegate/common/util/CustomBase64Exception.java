package net.smilegate.common.util;

public class CustomBase64Exception extends RuntimeException {
    private static final long serialVersionUID = 8862620700997732578L;

    public CustomBase64Exception(String message) {
    	super(message);
    }
}

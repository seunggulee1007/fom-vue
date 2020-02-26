package net.smilegate.fim.advice.exception;

/**
 * 허용되지 않은 서버 예외 처리
 * @author es-seungglee
 *
 */
public class NotAcceptedServerException extends RuntimeException {

    /**
     * 
     */
    private static final long serialVersionUID = 1291658484551919953L;
    public NotAcceptedServerException(String msg, Throwable t) {
        super(msg, t);
    }
     
    public NotAcceptedServerException(String msg) {
        super(msg);
    }
     
    public NotAcceptedServerException() {
        super();
    }

}

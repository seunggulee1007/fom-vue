package net.smilegate.fim.advice.exception;

/**
 * 유효하지 않은 사업자 번호 예외 처리
 * @author es-seungglee
 *
 */
public class NotbizNoException extends RuntimeException {

    /**
     * 
     */
    private static final long serialVersionUID = 1291658484551919953L;
    public NotbizNoException(String msg, Throwable t) {
        super(msg, t);
    }
     
    public NotbizNoException(String msg) {
        super(msg);
    }
     
    public NotbizNoException() {
        super();
    }

}

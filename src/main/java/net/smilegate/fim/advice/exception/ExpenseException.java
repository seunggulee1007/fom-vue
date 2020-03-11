package net.smilegate.fim.advice.exception;

/**
 * 유효하지 않은 사업자 번호 예외 처리
 * @author es-seungglee
 *
 */
public class ExpenseException extends RuntimeException {

    /**
     * 
     */
    private static final long serialVersionUID = 1291658484551919953L;
    public ExpenseException(String msg, Throwable t) {
        super(msg, t);
    }
     
    public ExpenseException(String msg) {
        super(msg);
    }
     
    public ExpenseException() {
        super();
    }

}

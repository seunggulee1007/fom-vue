package net.smilegate.fim.enums;

public enum CommonCode {

    SUCCESS(0)
    ,FAIL(-1)
    ,FORBIDDEN(-1001)
    ;
    int code;
    CommonCode(int code) {
        this.code = code;
    }
    
    public int getCode() {
        return code;
    }
    
}

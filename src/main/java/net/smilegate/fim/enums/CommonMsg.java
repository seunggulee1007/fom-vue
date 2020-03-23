package net.smilegate.fim.enums;

public enum CommonMsg {

    SUCCESS_WRITE("저장에 성공하였습니다.")
    ;
    String msg;
    CommonMsg(String msg) {
        this.msg = msg;
    }
    
    public String getMsg() {
        return msg;
    }
    
}

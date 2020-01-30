package net.smilegate.common.enums;

import lombok.Getter;

@Getter
public enum AlertType {
    MAIL(1),
    SMS(2);
    private int code;

    AlertType(int code) {
    	this.code = code;
    }
}

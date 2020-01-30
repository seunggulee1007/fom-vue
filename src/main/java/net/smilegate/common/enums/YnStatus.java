package net.smilegate.common.enums;

import lombok.Getter;

@Getter
public enum YnStatus {
    Y(1, true),
    N(0, false);
    private final int value;
    private final boolean boolValue;

    YnStatus(int value, boolean boolValue) {
    	this.value = value;
    	this.boolValue = boolValue;
    }
}

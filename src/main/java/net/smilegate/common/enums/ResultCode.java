package net.smilegate.common.enums;

import lombok.Getter;
import net.smilegate.common.util.MessageUtils;
@Getter
public enum ResultCode {
    SUCCESS(0, "Success"),
    UNDEFINED_ERROR(-1, "Undefined Error"),
    PARAM_VALIDATION_ERR0R(-2, "Parameter Validation Error");

    private final int value;
    private final String resultPhrase;

    ResultCode(int value, String resultPhrase) {
    	this.value = value;
		this.resultPhrase = resultPhrase;
    }
    
    public static ResultCode valueOf(int value) {
		for (ResultCode code : values()) {
		    if (code.value == value) {
			return code;
		    }
		}
		throw new IllegalArgumentException(MessageUtils.getMessage("error.enum.notfound", value));
    }

}

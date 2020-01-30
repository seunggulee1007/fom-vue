package net.smilegate.common.vo;

import java.io.Serializable;

import lombok.Data;
import net.smilegate.common.enums.ResultCode;

@Data
public class Result<T> implements Serializable {
    private static final long serialVersionUID = -7537804452915388464L;
    private ResultCode resultCode;
    private String resultMessage;
    private T data;
}

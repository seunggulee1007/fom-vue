package net.smilegate.common.vo.response;

import lombok.Data;
import net.smilegate.common.vo.Result;

@Data
public class NonPageable<T> extends Result<T> {
    private static final long serialVersionUID = 1L;
    private T data;
}

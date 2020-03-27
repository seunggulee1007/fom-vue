package net.smilegate.fim.vo.common;

import java.util.Map;

import lombok.Builder;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Builder
@Getter
@Setter
@ToString
public class CommonResultVO {

    @Builder.Default
    private int result = 0;
    private String resultMsg;
    private Map<String, Object> data;
    
}

package net.smilegate.fim.advice;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestControllerAdvice;

import lombok.RequiredArgsConstructor;
import net.smilegate.fim.advice.exception.NotAcceptedServerException;
import net.smilegate.fim.advice.exception.NotbizNoException;
import net.smilegate.fim.enums.CommonCode;
import net.smilegate.fim.vo.CommonResultVO;

/**
 * 커스텀 예외 처리
 * @author es-seungglee
 *
 */
@RequiredArgsConstructor
@RestControllerAdvice
public class ExceptionAdvice {
    
    @ExceptionHandler(Exception.class)
    @ResponseStatus(HttpStatus.SERVICE_UNAVAILABLE)
    protected CommonResultVO defaultException(Exception e) {
        CommonResultVO commonResultVo = CommonResultVO.builder()
                .result(CommonCode.FAIL.getCode())
                .resultMsg(e.getMessage())
                .build();
        return commonResultVo;
    }
    
    @ExceptionHandler(NotbizNoException.class)
    @ResponseStatus(HttpStatus.UNPROCESSABLE_ENTITY)
    protected CommonResultVO notBusnpNoException(Exception e) {
        CommonResultVO commonResultVo = CommonResultVO.builder()
                                            .result(CommonCode.FAIL.getCode())
                                            .resultMsg(e.getMessage())
                                            .build();
        return commonResultVo;
    }
    
    @ExceptionHandler(NotAcceptedServerException.class)
    @ResponseStatus(HttpStatus.FORBIDDEN)
    protected CommonResultVO NotAcceptedServerException(Exception e) {
        CommonResultVO commonResultVo = CommonResultVO.builder()
                .result(CommonCode.FORBIDDEN.getCode())
                .resultMsg(e.getMessage())
                .build();
        return commonResultVo;
    }
    
    
}

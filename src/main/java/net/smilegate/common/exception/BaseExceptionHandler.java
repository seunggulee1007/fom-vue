package net.smilegate.common.exception;

import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.http.HttpStatus;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestController;

import net.smilegate.common.vo.CommonResponse;

@ControllerAdvice
@RestController
public class BaseExceptionHandler {

	@ExceptionHandler(MethodArgumentNotValidException.class)
	public CommonResponse<Boolean> handleMethodArgumentNotValidException(MethodArgumentNotValidException manve) {

		final Logger log = LogManager.getLogger(BaseExceptionHandler.class);

		CommonResponse<Boolean> result = new CommonResponse<Boolean>();

		BindingResult errors = manve.getBindingResult();
		List<ObjectError> list = errors.getAllErrors(); 
		String errorMessage = "";
		String message = "";

		//에러가 여러개 발생해도 1개만 반환하기 위해 0번을 가져온다.
		log.debug("Errors List : " + list);
		errorMessage = list.get(0).toString();
		message += list.get(0).getDefaultMessage();

		result.setCompleted(false);
		result.setErrorMessage(errorMessage);
		result.setMessage(message);
		result.setStatusCode(Integer.toString(HttpStatus.BAD_REQUEST.value()));

		return result;
	}

}

package net.smilegate.common.vo;

import lombok.Data;

/**
 * @package		net.smilegate.common.domain
 * @filename	CommonResponse.java
 * @author		정보개발팀 조규환
 * @date		2019. 8. 20.
 * @see			
 */
@Data
public class CommonResponse<T> {
	
	/* 성공 여부. 서버에서 기능이 오류가 나지 않고 올바르게 돌았다 아니다. (에러는 안나지만 실패하는 경우도 false) */
	private boolean completed; 
	
	/* 사용자에게 보여주는 메시지 */
	private String message; 
	
	/* 시스템에서 주는 메시지(개발자들이 보는 용) */
	private String errorMessage; 
	
	/* 커스터마이징한 결과값 */
	private T resultValue;
	
	/* HTTP 상태코드 */
	private String statusCode;
	
	public CommonResponse () {}
	
	@Override
	public String toString() {
		return "Response [completed=" + completed + "\n message=" + message + "\n errorMessage=" + errorMessage
				+ "\n resultValue=" + resultValue + "\n statusCode=" + statusCode + "]";
	}
	
}

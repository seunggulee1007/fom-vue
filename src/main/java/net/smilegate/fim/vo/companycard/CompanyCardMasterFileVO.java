package net.smilegate.fim.vo.companycard;

import lombok.Data;

@Data
public class CompanyCardMasterFileVO {


	/** 결제내역 내부코드 */
	private int cardUseSeq;

	/** 파일순번 */
	private int fileSerl;

	/** 원본파일명 */
	private String oFileName;

	/** 변경된 파일명 */
	private String mFileName;

	/** 최종수정시간 */
	private String lastDateTime;

	/** 최종수정자 */
	private String lastUserId;

	/** 삭제여부 */
	private String isDelete;

	/** 작업구분 */
	private String logTag;

	/** 파일용량  */
	private long fileSize;

	/** 파일 저장경로 */
	private String filePath;
}

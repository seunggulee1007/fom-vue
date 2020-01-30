package net.smilegate.common.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class Member {
	
	/* EKPORG.DBO.TB_BASE_USER
	 * 편의상 모든 컬럼을 명시하지는 않음 */
	private String userId;
	private String logonId;
	private String userNm;
	
	
	
	/* 기존 HelpDesk domain */
    private String no;
	private String realNo;
	private String name;
	private String post;
	private String office;
	private String team;
	private String part;
	private String position;
	private String positionName;
	private String duty;
	private String jobGroup;
	private String job;
	private Date enteredDate;
	private String socialNumber;
	private String eng_Name;
	private String kor_Name;
	private String nickName;
	private String email;
	private String messenger;
	private String mobile;
	private Date birthday;
	private String zipCode;
	private String address1;
	private String address2;
	private String hobby;
	private String feat;
	private String innerLine;
	private String fileName;
	private String cardNo;
	private int inputCnt;
	private int internCnt;
	private String companyIdx;	// 소속 구분
	private String systemIdx;
	/* U_MemberSetting */
	private int masterCnt;
	private int notice;
	private int task;
	private int taskComment;
	private int taskProposal;
	private int postReport;
	private int officeReport;
	private int teamReport;
	private int partReport;
	private int memberReport;
	private int grade;
	private String id;
	private String quick_menu;
	private Date last_access_time;
	private int isAccess = 0;
	private String message;
	private int tripGrade;
	private int innerCnt; 	// 0 - 내부, 1 - 외부
	private String orgNm;
	private String dutyNm;
	private String combineIdx;
	private String manager_yn;
	private int smileSystemIdx;
}

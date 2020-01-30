package net.smilegate.common.vo;
/**
 * 기존 HelpDesk 메일 관련 설정 및 메시지 
 * TODO : 타 시스템 분석 후 일반화 필요 
 */
public interface SmileGateGlobals {
    /* 공통 */

    // return 메시지를 위한 redirect 용 URL
    public static final String TEMP_MESSAGE = "helpDesk/temp_action_message";

    // 법인별 메일주소
    public static final String SMILEGATE_MAIL = "@smilegate.com";
    public static final String PALMPLE_MAIL = "@palmple.com";
    public static final String SGI_MAIL = "@sginternet.net";
    public static final String RPG_FACTORY_MAIL = "@rpgfactory.co.kr";

    /* Login */

    // 쿠키 : 아이디 , 비번
    public static final String SAVE_ID_COOKIE = "smilenetid";
    public static final String SAVE_PW_COOKIE = "smlienetpw";

    // 아이디 , 비번 미입력시 경고내용
    public static final String INPUT_ID_ALERT = "ID를 입력해주세요";
    public static final String INPUT_PASS_ALERT = "비밀번호를 입력해주세요 ";

    // 아이디 , 비번이 맞지 않을때
    public static final String WRONG_ID_PASS = "아이디 또는 비밀번호가 맞지 않습니다.";

    // 처리부서
    public static final String JUNSAN = "H0000091"; // 정보지원실. 아 조직 변경좀 엥간히 해라.
    public static final String BOAN = "H0000045"; // 정보보안실
    public static final String CHONGMU = "H0000070"; // 총무팀
    public static final String JAMU = "A0000307"; // 재무회계팀
    public static final String SGI_SUPPORT = "S0000009"; // SGI 경영지원팀
    public static final String RPG_FACTORY_SUPPORT = "F0000001"; // RPG팩토리 경영지원팀
    public static final String MVP_SUPPORT = "V0000003"; // SG 인베스트먼트

    /* solution */
    public static final String HELPDESK_GRADE_MAP = "gradeMap";
    public static final String HELPDESK_GRADE_VO = "gradeVO";
    public static final String HELPDESK_GM_DEPT_LIST = "gmDeptList";
    public static final String HELPDESK_CHARGINFOLIST = "chargeInfoList";
    public static final String HELPDESK_OUTSRC_GUBUN = "outsrcGubun";

    /* 메일 */
    public static final String HELPDEKS_MAIL_A = "새로운 문의.요청 사항이 등록되었습니다.";
    public static final String HELPDEKS_MAIL_B1 = "문의.요청 사항이 전달 되었습니다.";
    public static final String HELPDEKS_MAIL_B2 = "문의.요청 사항에 대한 결재 요청 드립니다.";
    public static final String HELPDEKS_MAIL_B2_Y = "문의.요청 사항에 대한 결재가 승인되었습니다.";
    public static final String HELPDEKS_MAIL_B2_N = "문의.요청 사항에 대한 결재가 반려되었습니다.";
    public static final String HELPDEKS_MAIL_C0 = "재요청이 등록되었습니다.";
    public static final String HELPDEKS_MAIL_C1 = "문의.요청 사항에 대한 처리 담당자가 지정되었습니다.";
    public static final String HELPDEKS_MAIL_C2 = "문의.요청 사항 처리완료에 대한 결재 요청 드립니다";
    public static final String HELPDEKS_MAIL_C2_Y = "처리 내용이 승인되었습니다";
    public static final String HELPDEKS_MAIL_C2_N = "처리 내용이 반려되었습니다";
    public static final String HELPDEKS_MAIL_C3 = "문의.요청 사항이 최종 완료 되었습니다";
    public static final String HELPDEKS_MAIL_C4 = "처리내역이 업데이트 되었습니다.";
    public static final String HELPDEKS_MAIL_E = "문의.요청 사항이 종료되었습니다.";
    public static final String HELPDEKS_MAIL_CHANGE = "처리자가 재지정 되었습니다";
    public static final String HELPDEKS_MAIL_COMMENT = "새로운 댓글이 등록 되었습니다.";
    public static final String HELPDEKS_MAIL_CATEGORY = "카테고리 변경이 요청되었습니다.";
    public static final String HELPDEKS_MAIL_REREQUEST = "헬프데스크에 재전달 되었습니다.";
    public static final String HELPDEKS_MAIL_QUARTZ = "Helpdesk에 아직 처리되지 않은 요청사항이 있습니다.";
    public static final String HELPDEKS_MAIL_SUB = "문의.요청 사항에 대한 서브 담당자 가 지정되었습니다.";
    // 바로가기 URL
    // public static final String HELPDEKS_LINK_INQUIRE =
    // "/inquire/selectInquireView"; //요청자,결재권자 (나의 문의요청 용 url)
    // public static final String HELPDEKS_LINK_SOLUTION =
    // "/solution/solutionDetail"; //헬프담당자, 팀장 ,처리자 (문의요청 처리 용 url)
    // public static final String HELPDEKS_LINK_SOLUTIONLIST =
    // "/solution/solutionList"; //헬프담당자, 팀장 ,처리자 (문의요청 처리 용 url)
    public static final String HELPDEKS_LINK_INQUIRE = "http://ekp.smilegate.net/eNovator/Portal/MainX_Contents.aspx?menu=board6&MenuID=&param1=help%20desk&MenuCode=64&sMenuTypeFlag=0"; // 요청자,결재권자
    public static final String HELPDEKS_LINK_SOLUTION = "http://ekp.smilegate.net/eNovator/Portal/MainX_Contents.aspx?menu=board6&MenuID=&param1=help%20desk&MenuCode=102&sMenuTypeFlag=0"; // 헬프담당자,
    public static final String HELPDEKS_LINK_SOLUTIONLIST = "http://ekp.smilegate.net/eNovator/Portal/MainX_Contents.aspx?menu=board6&MenuID=&param1=help%20desk&MenuCode=102&sMenuTypeFlag=0"; // 헬프담당자,

    /* 스마일게이트 시스템 구분 */
    public static final String SMILE_SYSTEM_IDX = "5"; // HelpDesk

    // 전 법인 조회 여부 체크
    public default String isAllCompanyViewCheck(String post, String team) {
	if (SmileGateGlobals.JUNSAN.equals(post) || SmileGateGlobals.BOAN.equals(post)) { // 업무지원실, 정보보안실
	    if (!SmileGateGlobals.CHONGMU.equals(team)) { // 총무팀은 제외
		return "Y";
	    }
	}
	return "N";
    }
}

package net.smilegate.common.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import lombok.extern.slf4j.Slf4j;
import net.smilegate.common.service.AuthorizationService;
import net.smilegate.common.service.MemberService;

@Slf4j
@Component
public class AuthenticationInterceptor extends HandlerInterceptorAdapter {

	private final String SM_USER = "SM_USER";

	@Value("${custom.server.domain}")
	private String domain;

	@Value("${custom.server.system-id}")
	private String systemId;

	@Value("${spring.profiles.active}")
	private String activeProfile;

	@Value("${custom.system-code}")
	private String systemCode;

	@Value("${custom.sso-page}")
	private String ssoPageUrl;

	private final String permissionedUrl = "^/(common)/([^/]+)(/.*)?";

	@Autowired
	MemberService memberService;

	@Autowired
	AuthorizationService authService;

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		/*
		HttpSession session = request.getSession(true);

		String logonId = request.getHeader(SM_USER);
		// 헤더 정보에 SM_USER값이 없는경우 local 환경이면 SM_USER를 parameter 값에서 읽어온다.
	    if(StringUtils.isBlank(logonId) && "local".equals(activeProfile)) {
	    	logonId = request.getParameter(SM_USER);
	    }

	    log.debug("[SM_USER] :: " + logonId);

		String path = request.getServletPath() + StringUtils.defaultString(request.getPathInfo());
		Pattern pattern = Pattern.compile(permissionedUrl);
		Matcher matcher = pattern.matcher(path);

		// 권한이 필요한 url 접근시 userId 값이 설정되지 않은경우
		if(matcher.matches() && StringUtils.isBlank(logonId)) {
		    log.info("로그인 필요");
		    response.sendError(HttpServletResponse.SC_UNAUTHORIZED);
		    return false;
		}

	    Member logonUser = (Member)session.getAttribute("logonUser");
		if(logonUser == null) {

		    logonUser = memberService.selectMemberByLogonId(logonId);

		    // Session 생성
		    session.setAttribute("logonUser", logonUser);
		    //session.setAttribute("menuList", authService.selectAuthList(systemCode, logonUser.getUserId()));
		} else {
			log.debug("[logonUser] :: " + logonUser);
		}

		log.info("접속자아이디 : {}, 접속 URL: {}, 접속 IP: {}", logonId, path, request.getRemoteAddr());
		*/
		return true;
	}

	@Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {

    }

}

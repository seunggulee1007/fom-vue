package net.smilegate.fim.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import lombok.RequiredArgsConstructor;
import net.smilegate.fim.vo.UrlHistoryVO;

@RequiredArgsConstructor
public class CommonController {
    
    /**
     * 이동할때마다 url저장하는 메서드
     * 현재 rbac구조상 interceptor에서 처리하기는 무리가 있어
     * 화면 이동하는 메서드마다 강제로 해당 메서드를 넣어 주어야 함.
     */
    public void saveUrl() {
        HttpServletRequest request = ((ServletRequestAttributes)RequestContextHolder.currentRequestAttributes()).getRequest();
        HttpSession session = request.getSession();
        String userId = session.getAttribute("userId") == null ? "admin" : (String)session.getAttribute("userId");
        String url = request.getRequestURI();
        UrlHistoryVO urlHistoryVO = new UrlHistoryVO();
        urlHistoryVO.setReqUrl(url);
        urlHistoryVO.setReqUserId(userId);
        
    }
    
}

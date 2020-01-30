package net.smilegate.common.listener;

import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

import lombok.extern.slf4j.Slf4j;

@WebListener
@Slf4j
public class SessionCounterListener implements HttpSessionListener {
    static private int activeSessions;

    public static int getActiveSessions() {
    	return activeSessions;
    }

    public SessionCounterListener() {
    	log.debug("SessionCounterListener is created!");
    }

    @Override
    public void sessionCreated(HttpSessionEvent se) {
    	activeSessions++;
        log.debug("Created!! activeSessions : {}", activeSessions);
    }

    @Override
    public void sessionDestroyed(HttpSessionEvent se) {
		activeSessions--;
		log.debug("Destoryed!! activeSessions : {}", activeSessions);
    }

}

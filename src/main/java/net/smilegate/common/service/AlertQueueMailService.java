package net.smilegate.common.service;

/**
 * @overview : db 연동 메일 서비스 인터페이스
 * @author : dooykang
 * @date   : 2019. 4. 30.
 */
public interface AlertQueueMailService {
    /**
     *
     * @param to : full e-mail adress
     * @param subject
     * @param contents
     * @throws IllegalArgumentException
     */
    public void sendMail(String to, String subject, String contents) throws IllegalArgumentException;
}
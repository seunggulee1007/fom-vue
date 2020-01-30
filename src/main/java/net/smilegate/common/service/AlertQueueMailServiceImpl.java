package net.smilegate.common.service;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import lombok.extern.slf4j.Slf4j;
import net.smilegate.common.enums.AlertType;
import net.smilegate.common.mapper.AlertQueueMapper;
import net.smilegate.common.util.MessageUtils;
import net.smilegate.common.vo.AlertQueue;
import net.smilegate.common.vo.Member;

@Slf4j
@Service
public class AlertQueueMailServiceImpl implements AlertQueueMailService {
    @Value("${custom.mail.from-address}")
    private String fromAddress;

    @Value("${custom.server.system-id}")
    private String systemId;

    @Value("${custom.server.system-name}")
    private String systemName;

    @Autowired
    public AlertQueueMapper alertQueueMapper;

    @Autowired
    public MemberService memberService;

    @Override
    public void sendMail(String to, String subject, String contents) throws IllegalArgumentException {
		if(StringUtils.isBlank(to)) {
		    throw new IllegalArgumentException(MessageUtils.getMessage("error.mail.missing.receiver"));
		}
	
		AlertQueue alertQueue = new AlertQueue();
		alertQueue.setAlertStatus(0);//TODO enum 값으로 변경
		alertQueue.setAlertType(AlertType.MAIL); //1:메일 , 2:SMS
		alertQueue.setFromId(systemId);
		alertQueue.setFromName(systemName);
		alertQueue.setFromMail(fromAddress);
	
		Member receiver = memberService.selectMemberByEmail(to);
		alertQueue.setToId(receiver.getNo());
		alertQueue.setToName(receiver.getName());
		alertQueue.setToMail(to);
	
		alertQueue.setAlertSubject(subject);
		alertQueue.setAlertMessage(contents);
		alertQueue.setAppType(systemId);
		alertQueue.setAppId(systemId);
		alertQueue.setPriority(0);//TODO enum 값으로 변경
	
		log.debug(alertQueue.toString());
		alertQueueMapper.sendMail(alertQueue);
		log.debug("메일 발송 완료");
    }
}

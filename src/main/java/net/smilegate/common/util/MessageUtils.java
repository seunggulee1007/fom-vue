package net.smilegate.common.util;

import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Component;

@Component
public class MessageUtils {
    private static MessageSource messageSource;

    @Autowired
    private MessageUtils(MessageSource messageSource) {
    	MessageUtils.messageSource = messageSource;
    }

    public static String getMessage(String code){
        return messageSource.getMessage(code, null, Locale.getDefault());
    }

    public static String getMessage(String code, String ... args){
        return messageSource.getMessage(code, args, Locale.getDefault());
    }

    public static String getMessage(String code, Integer ... args){
    	return messageSource.getMessage(code, args, Locale.getDefault());
    }

    public static String getMessage(String code, Locale locale, String ... args){
    	return messageSource.getMessage(code, args, locale);
    }

    public static String getMessage(String code, Locale locale, Integer ... args){
    	return messageSource.getMessage(code, args, locale);
    }

    public static String getMessage(String code, Locale locale){
    	return messageSource.getMessage(code, null, locale);
    }
}
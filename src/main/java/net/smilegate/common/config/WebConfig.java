package net.smilegate.common.config;

import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.validation.beanvalidation.MethodValidationPostProcessor;
import org.springframework.web.servlet.LocaleResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.i18n.LocaleChangeInterceptor;
import org.springframework.web.servlet.i18n.SessionLocaleResolver;

import net.smilegate.common.interceptor.AuthenticationInterceptor;
import net.smilegate.common.interceptor.RequestLogInterceptor;

@Configuration
@EnableWebMvc
public class WebConfig implements WebMvcConfigurer {

    @Autowired
    private RequestLogInterceptor requestLogInterceptor;

    @Autowired
    private AuthenticationInterceptor authenticationInterceptor;

    @Bean
    public LocaleResolver localeResolver() {
        SessionLocaleResolver sessionLocaleResolver = new SessionLocaleResolver();
        sessionLocaleResolver.setDefaultLocale(Locale.KOREA);
        return sessionLocaleResolver;
    }

    //인터셉터에서 파라미터를 이용 locale 변경
    @Bean
    public LocaleChangeInterceptor localeChangeInterceptor() {
        LocaleChangeInterceptor localeChengeInterceptor = new LocaleChangeInterceptor();
        localeChengeInterceptor.setParamName("lang");
        return localeChengeInterceptor;
    }

    @Bean
    public MethodValidationPostProcessor methodValidationPostProcessor() {
        return new MethodValidationPostProcessor();
    }

    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(requestLogInterceptor)
                .addPathPatterns("/**")
                .excludePathPatterns("/test/**","/resources/**", "/webjars/**");

        registry.addInterceptor(authenticationInterceptor)
        	.addPathPatterns("/**")
        	.excludePathPatterns("/test/**", "/resources/**", "/webjars/**");

        registry.addInterceptor(localeChangeInterceptor());
    }

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
	//webjars 버전 없이 관리하기 위한 설정
	registry.addResourceHandler("/webjars/**")
		.addResourceLocations("/webjars/")
		.resourceChain(false);
//		.setCachePeriod(3600)
//		.resourceChain(4);

//	registry.addResourceHandler("/webjars/**")
//        	.addResourceLocations("classpath:/META-INF/resources/webjars/");

	//resouces 위치
	registry.addResourceHandler("/resources/**")
		.addResourceLocations("/resources/");
//		.setCachePeriod(3600)
//		.resourceChain(true)
//		.addResolver(new PathResourceResolver());

	registry.addResourceHandler("swagger-ui.html")
        	.addResourceLocations("classpath:/META-INF/resources/");
    }
}
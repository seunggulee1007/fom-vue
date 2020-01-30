package net.smilegate.common.config;

import java.util.Collections;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Profile;

import io.swagger.annotations.ApiOperation;
import springfox.documentation.builders.PathSelectors;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.service.Contact;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

@Configuration
@EnableSwagger2
@Profile({"development", "local"})
public class SwaggerConfig {
	
	@Value("${spring.profiles.active}")
	private String profile;

	@Bean
	public Docket api() {
		return new Docket(DocumentationType.SWAGGER_2)
				.select()
				.apis(RequestHandlerSelectors.withMethodAnnotation(ApiOperation.class))
				.paths(PathSelectors.ant("/**"))
				.build();
	}
	
	private ApiInfo apiInfo() {
		return new ApiInfo(
				"정보시스템 REST API",
				"External service",
				"REST API",
				"Terms of services",
				new Contact("kyuhcho", "ext-crs.smiledev.net", "kyuhcho@smilegate.com"),
				"License of API", "API license URL", Collections.emptyList());
	}
}

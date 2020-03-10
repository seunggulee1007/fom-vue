package net.smilegate;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableScheduling;

@SpringBootApplication
@EnableScheduling       // 스케쥴러 기능 켜기
public class FimWebApplication {

	public static void main(String[] args) {
		SpringApplication.run(FimWebApplication.class, args);
	}

}

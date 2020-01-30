package net.smilegate.common.config;

import java.io.IOException;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.env.EnvironmentPostProcessor;
import org.springframework.boot.env.YamlPropertySourceLoader;
import org.springframework.core.env.ConfigurableEnvironment;
import org.springframework.core.env.PropertySource;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;

public class EnvironmentPostProcessorConfig implements EnvironmentPostProcessor {

	private final YamlPropertySourceLoader loader = new YamlPropertySourceLoader();
	
	@Override
	public void postProcessEnvironment(ConfigurableEnvironment environment, SpringApplication application) {
		Resource path = new ClassPathResource("config.yml");
		PropertySource<?> propertySource = loadYaml(path);
		
		environment.getPropertySources().addLast(propertySource);
	}
	
	private PropertySource<?> loadYaml(Resource path) {
		if (!path.exists()) {
			throw new IllegalArgumentException("Resource " + path + " does not exist");
		}
		
		try {
			return this.loader.load("custom-resource", path).get(0);
		} catch (IOException e) {
			throw new IllegalStateException("Failed to load yaml configuration from " + path, e);
		}
	}

}

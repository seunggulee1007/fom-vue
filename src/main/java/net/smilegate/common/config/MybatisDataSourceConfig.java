package net.smilegate.common.config;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.boot.jdbc.DataSourceBuilder;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;

import com.zaxxer.hikari.HikariDataSource;

@Configuration
@MapperScan(basePackages = "net.smilegate.**.mapper", sqlSessionFactoryRef = "sqlSessionFactory")
public class MybatisDataSourceConfig {
	
	@Bean(name = "dataSource")
	@ConfigurationProperties(prefix = "spring.datasource.hikari.mybatis")
	public DataSource DataSource() {
		return DataSourceBuilder.create().type(HikariDataSource.class).build();
	}
	
	@Bean(name = "sqlSessionFactory")
	public SqlSessionFactory sqlSessionFactory(
			@Qualifier("dataSource") DataSource dataSource,
			ApplicationContext context) throws Exception {
		SqlSessionFactoryBean sqlSessionFactory = new SqlSessionFactoryBean();
		
		sqlSessionFactory.setDataSource(dataSource);
		sqlSessionFactory.setMapperLocations(context.getResources("classpath:mybatis/mapper/**/*.xml"));
		sqlSessionFactory.setConfigLocation(context.getResource("classpath:mybatis/Mybatis-config.xml"));
		
		return sqlSessionFactory.getObject();
	}
	
	@Bean(name = "sqlSession")
	public SqlSessionTemplate sqlSession(@Qualifier("sqlSessionFactory") SqlSessionFactory sqlSessionFactory) throws Exception {
		return new SqlSessionTemplate(sqlSessionFactory);
	}
	
	@Bean
	public DataSourceTransactionManager transactionManager() {
		return new DataSourceTransactionManager(DataSource());
	}
	
}

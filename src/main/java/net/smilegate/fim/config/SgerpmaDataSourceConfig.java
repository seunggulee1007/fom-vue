package net.smilegate.fim.config;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.boot.jdbc.DataSourceBuilder;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;

@Configuration
@EnableTransactionManagement
@MapperScan(basePackages = "net.smilegate.fim.mappers.sgerpma", sqlSessionFactoryRef = "sgerpmaSqlSessionFactory")
public class SgerpmaDataSourceConfig extends HikariConfig {
    
    @Bean(name = "sgerpmaDataSource")
    @ConfigurationProperties(prefix = "spring.datasource.hikari.sgerpma")
    public DataSource secondDataSource() {
        return DataSourceBuilder.create().type(HikariDataSource.class).build();
    }
    
    @Bean(name = "sgerpmaSqlSessionFactory")
    public SqlSessionFactory sqlSessionFactory(
            @Qualifier("sgerpmaDataSource") DataSource dataSource,
            ApplicationContext context) throws Exception {
        SqlSessionFactoryBean sqlSessionFactory = new SqlSessionFactoryBean();
        
        sqlSessionFactory.setDataSource(dataSource);
        sqlSessionFactory.setMapperLocations(context.getResources("classpath:mybatis/mapper/sgerpma/*.xml"));
        sqlSessionFactory.setConfigLocation(context.getResource("classpath:mybatis/Mybatis-config.xml"));
        
        return sqlSessionFactory.getObject();
    }
    
    @Bean(name = "sgerpmaSqlSession")
    public SqlSessionTemplate sqlSession(@Qualifier("sgerpmaSqlSessionFactory") SqlSessionFactory sqlSessionFactory) throws Exception {
        return new SqlSessionTemplate(sqlSessionFactory);
    }
    
    @Bean(name = "sgerpmaTransactionManager")
    public DataSourceTransactionManager transactionManager(@Autowired @Qualifier("sgerpmaDataSource") DataSource secondaryDataSource) {
        return new DataSourceTransactionManager(secondaryDataSource);
    }
    
}

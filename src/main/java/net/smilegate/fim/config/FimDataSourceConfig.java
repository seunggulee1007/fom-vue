package net.smilegate.fim.config;

import java.util.HashMap;
import java.util.Map;

import javax.persistence.EntityManagerFactory;
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
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.orm.jpa.JpaTransactionManager;
import org.springframework.orm.jpa.JpaVendorAdapter;
import org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean;
import org.springframework.orm.jpa.vendor.HibernateJpaVendorAdapter;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;

@Configuration
@EnableTransactionManagement
@MapperScan(basePackages = "net.smilegate.fim.mappers.fim", sqlSessionFactoryRef = "fimSqlSessionFactory")
@EnableJpaRepositories(
        entityManagerFactoryRef = "jpaEntityManagerFactory"
        ,transactionManagerRef = "jpaTransactionManager"
        ,basePackages = "net.smilegate.fim.mappers.fim"
        )
public class FimDataSourceConfig extends HikariConfig {
    
    @Bean(name = "fimDataSource")
    @ConfigurationProperties(prefix = "spring.datasource.hikari.mydatabase")
    public DataSource secondDataSource() {
        return DataSourceBuilder.create().type(HikariDataSource.class).build();
    }
    
    @Bean(name = "fimSqlSessionFactory")
    public SqlSessionFactory sqlSessionFactory(
            @Qualifier("fimDataSource") DataSource dataSource,
            ApplicationContext context) throws Exception {
        SqlSessionFactoryBean sqlSessionFactory = new SqlSessionFactoryBean();
        
        sqlSessionFactory.setDataSource(dataSource);
        sqlSessionFactory.setMapperLocations(context.getResources("classpath:mybatis/mapper/fim/*.xml"));
        sqlSessionFactory.setConfigLocation(context.getResource("classpath:mybatis/Mybatis-config.xml"));
        
        return sqlSessionFactory.getObject();
    }
    
    @Bean(name = "jpaEntityManagerFactory")
    public EntityManagerFactory entityManagerFactory() {
        JpaVendorAdapter vendorAdapter = new HibernateJpaVendorAdapter();

        LocalContainerEntityManagerFactoryBean factory = new LocalContainerEntityManagerFactoryBean();
        factory.setDataSource(this.secondDataSource());
        factory.setJpaVendorAdapter(vendorAdapter);
        Map<String, Object> properties = new HashMap<>();
        properties.put("hibernate.hbm2ddl.auto", "update");
        properties.put("hibernate.dialect", "org.hibernate.dialect.SQLServer2008Dialect");
        properties.put("hibernate.show_sql", true);
        properties.put("hibernate.format_sql", true);
        properties.put("hibernate.id.new_generator_mappings", true);
        factory.setJpaPropertyMap(properties);
        /*
         * factory.setJpaPropertyMap(ImmutableMap.of( "hibernate.hbm2ddl.auto",
         * "update", "hibernate.dialect", "org.hibernate.dialect.MySQL5InnoDBDialect",
         * "hibernate.show_sql", "true", // sql 보기 "hibernate.format_sql", "true", //
         * sql 정렬해서 보기 "hibernate.id.new_generator_mappings", "true" // JAP표준에 맞게 새로운 키
         * 생성 전략을 사용 ));
         */
        factory.setPackagesToScan("net.smilegate.fim.vo");
        factory.setPersistenceUnitName("fim");
        factory.afterPropertiesSet();   

        return factory.getObject();
    }
    
    @Bean(name = "jpaTransactionManager")
    public JpaTransactionManager transactionManager() {
        JpaTransactionManager tm = new JpaTransactionManager();
        tm.setEntityManagerFactory(entityManagerFactory());
        return tm;
    }
    
    @Bean(name = "fimSqlSession")
    public SqlSessionTemplate sqlSession(@Qualifier("fimSqlSessionFactory") SqlSessionFactory sqlSessionFactory) throws Exception {
        return new SqlSessionTemplate(sqlSessionFactory);
    }
    
    @Bean(name = "fimTransactionManager")
    public DataSourceTransactionManager transactionManager(@Autowired @Qualifier("fimDataSource") DataSource secondaryDataSource) {
        return new DataSourceTransactionManager(secondaryDataSource);
    }
    
}

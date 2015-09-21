package fil.iagl.cookorico;

import javax.sql.DataSource;

import org.apache.commons.dbcp.BasicDataSource;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.context.annotation.Bean;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import fil.iagl.cookorico.dao.Test;

@EnableAutoConfiguration
@RestController
@MapperScan(basePackages = "fil.iagl.cookorico.dao")
public class CookoricoApplication {

	@Autowired
	private DataSource dataSource;

	@Autowired
	private Test test;

	@Bean
	public DataSource dataSource() {

		BasicDataSource ds = new BasicDataSource();
		ds.setUsername("cookorico");
		ds.setPassword("cookorico");
		ds.setUrl("jdbc:postgresql://172.28.1.104:5432/cookoricodb");
		ds.setDriverClassName("org.postgresql.Driver");
		ds.setMaxWait(25);
		return ds;

	}

	@RequestMapping("/")
	public String test() {
		System.out.println("Debut Test DB");
		System.out.println(test.idlist());
		test.idlist().forEach(System.out::println);
		return "COUCOU TOI ";
	}

	@Bean
	public SqlSessionFactory sqlSessionFactory(DataSource dataSource) throws Exception {
		final SqlSessionFactoryBean sessionFactory = new SqlSessionFactoryBean();
		sessionFactory.setDataSource(dataSource);
		return sessionFactory.getObject();
	}

	public static void main(String[] args) {

		SpringApplication.run(CookoricoApplication.class, args);
	}
}
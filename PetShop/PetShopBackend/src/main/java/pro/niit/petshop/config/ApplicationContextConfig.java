package pro.niit.petshop.config;

import java.util.Properties;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.ImportResource;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate4.HibernateTransactionManager;
import org.springframework.orm.hibernate4.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import pro.niit.petshop.dao.CategoryDAO;
import pro.niit.petshop.dao.CategoryDAOImpl;
import pro.niit.petshop.dao.UserDAO;
import pro.niit.petshop.dao.UserDAOImpl;
import pro.niit.petshop.model.CategoryDetails;
import pro.niit.petshop.model.ProductDetails;
import pro.niit.petshop.model.SupplierDetails;
import pro.niit.petshop.model.UserDetails;
import pro.niit.petshop.model.UserRole;

@Configuration
@ImportResource({ "classpath*: PetShopFrontend/src/main/webapp/WEB-INF/spring-security.xml" })
@EnableTransactionManagement
@ComponentScan("pro.niit.petshop")
public class ApplicationContextConfig {

	@Bean(name = "dataSource")
	public DataSource getH2DataSource() {
		DriverManagerDataSource dataSource = new DriverManagerDataSource();
		dataSource.setDriverClassName("org.h2.Driver");
		dataSource.setUrl("jdbc:h2:tcp://localhost/~/test");
		dataSource.setUsername("sa");
		dataSource.setPassword("sa");

		return dataSource;
	}

	private Properties getHibernateProperties() {
		Properties properties = new Properties();
		properties.put("hibernate.show_sql", "true");
		properties.put("hibernate.dialect", "org.hibernate.dialect.H2Dialect");
		properties.put("hibernate.hbm2ddl.auto", "create");

		return properties;
	}

	@Autowired
	@Bean(name = "sessionFactory")
	public SessionFactory getSessionFactory(DataSource dataSource) {
		LocalSessionFactoryBuilder sessionBuilder = new LocalSessionFactoryBuilder(dataSource);
		sessionBuilder.addProperties(getHibernateProperties());
		sessionBuilder.addAnnotatedClass(UserDetails.class);
		sessionBuilder.addAnnotatedClass(CategoryDetails.class);
		sessionBuilder.addAnnotatedClass(ProductDetails.class);
		sessionBuilder.addAnnotatedClass(SupplierDetails.class);
		sessionBuilder.addAnnotatedClass(UserRole.class);

		return sessionBuilder.buildSessionFactory();
	}

	@Autowired
	@Bean(name = "transactionManager")
	public HibernateTransactionManager getTransactionManager(SessionFactory sessionFactory) {
		HibernateTransactionManager transactionManager = new HibernateTransactionManager(sessionFactory);

		return transactionManager;
	}
	
	@Autowired
    @Bean(name = "categoryDAO")
    public CategoryDAO getCategoryDao(SessionFactory sessionFactory) {
    	return new CategoryDAOImpl(sessionFactory);
    }

	@Autowired
	@Bean(name = "userDAO")
	public UserDAO getProductDAO(SessionFactory sessionFactory) {

		return new UserDAOImpl(sessionFactory);
	}
	
	
}

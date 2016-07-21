package com.niit.petshop.config;

import java.util.Properties;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate4.HibernateTransactionManager;
import org.springframework.orm.hibernate4.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.niit.petshop.dao.CategoryDAO;
import com.niit.petshop.dao.CategoryDAOImpl;
import com.niit.petshop.dao.PetsDAO;
import com.niit.petshop.dao.PetsDAOImpl;
import com.niit.petshop.dao.SupplierDAO;
import com.niit.petshop.dao.SupplierDAOImpl;
import com.niit.petshop.dao.UsersDAO;
import com.niit.petshop.dao.UsersDAOImpl;
import com.niit.petshop.model.CategoryTable;
import com.niit.petshop.model.PetsTable;
import com.niit.petshop.model.SupplierTable;
import com.niit.petshop.model.UsersTable;

@Configuration
@ComponentScan("com.niit")
@EnableTransactionManagement
public class ApplicationContextConfig {
	
	@Bean(name="dataSource")
	public DataSource getH2DataSource() {
		DriverManagerDataSource dataSource=new DriverManagerDataSource();
		dataSource.setDriverClassName("org.h2.Driver");
		dataSource.setUrl("jdbc:h2:tcp://localhost/~/psdb");
		dataSource.setUsername("sa");
		dataSource.setPassword("sa");
		return dataSource;
	}
	
	private Properties getHibernateProperties() {
		Properties properties=new Properties();
		properties.put("hibernate.show_sql", "true");
		properties.put("hibernate.dialect", "org.hibernate.dialect.H2Dialect");
		properties.put("hibernate.hbm2ddl.auto","create");
		return properties;
		
	}
	
	@Autowired
	@Bean(name="sessionFactory")
	public SessionFactory getSessionFactory(DataSource dataSource) {
		LocalSessionFactoryBuilder sessionBuilder=new LocalSessionFactoryBuilder(dataSource);
		sessionBuilder.addProperties(getHibernateProperties());
		sessionBuilder.addAnnotatedClass(CategoryTable.class);
		sessionBuilder.addAnnotatedClass(SupplierTable.class);
		sessionBuilder.addAnnotatedClass(UsersTable.class);
		sessionBuilder.addAnnotatedClass(PetsTable.class);
		return sessionBuilder.buildSessionFactory();
		
	}
	
	@Autowired
	@Bean(name="transactionManager")
	public HibernateTransactionManager getTransactionManager(SessionFactory sessionFactory) {
		HibernateTransactionManager transactionManager = new HibernateTransactionManager(sessionFactory);
		return transactionManager;
		
	}
	
	@Autowired
	@Bean(name = "categoryDAO")
	public CategoryDAO getCategoryDAO(SessionFactory sessionFactory) {
		   
	return new CategoryDAOImpl(sessionFactory);
	}

	@Autowired
	@Bean(name = "supplierDAO")
	public SupplierDAO getSupplierDAO(SessionFactory sessionFactory) {
		   
	return new SupplierDAOImpl(sessionFactory);
	}
	
	@Autowired
	@Bean(name = "usersDAO")
	public UsersDAO getUserDAO(SessionFactory sessionFactory) {
		   
	return new UsersDAOImpl(sessionFactory);
	}
	
	@Autowired
	@Bean(name = "petsDAO")
	public PetsDAO getPetsDAO(SessionFactory sessionFactory) {
		   
	return new PetsDAOImpl(sessionFactory);
	}
}

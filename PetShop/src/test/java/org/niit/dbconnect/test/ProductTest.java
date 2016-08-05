package org.niit.dbconnect.test;

import java.util.List;

import org.niit.dbconnect.dao.ProductDAO;
import org.niit.dbconnect.dao.ProductDAOImpl;
import org.niit.dbconnect.model.ProductTable;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

public class ProductTest {

	/*public static void main(String[] args) {
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("org.niit.dbconnect");
		context.refresh();
		
		ProductDAO productDAO = (ProductDAO) context.getBean("productDAO");
		ProductTable productTable = (ProductTable) context.getBean("productTable");
		
		productTable.setId("P001");
		productTable.setName("Chihuahua");
		productTable.setPrice(12000);
		productTable.setDescription("DOG");
		
		productDAO.saveOrUpdate(productTable);
		
		productTable.setId("P002");
		productTable.setName("Labrador Retriever");
		productTable.setPrice(16600);
		productTable.setDescription("DOG");
		
		productDAO.saveOrUpdate(productTable);
		
		productDAO.get("P002");
		
		productDAO.delete("P001");
		
		
		
		
	}*/
}

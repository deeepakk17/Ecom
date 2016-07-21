package com.niit.petshop.testmodel;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.petshop.dao.CategoryDAO;
import com.niit.petshop.model.CategoryTable;

public class TestCategory {

	
	public static void main(String[] args) {
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com.niit");
		context.refresh();
		
		CategoryDAO categoryDAO = (CategoryDAO) context.getBean("categoryDAO");
		CategoryTable categoryTable = (CategoryTable) context.getBean("categoryTable");
		
		categoryTable.setCategory_id("CAT001");
		categoryTable.setCategory_name("Birds");
		categoryTable.setSupplier_id("SUP003");
		
		categoryDAO.saveOrUpdate(categoryTable);
		categoryDAO.get("CAT001");
		context.close();
		
		
	}
}

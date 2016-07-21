package com.niit.petshop.dao;

import java.util.List;

import com.niit.petshop.model.CategoryTable;


public interface CategoryDAO {
	
		public List<CategoryTable> list();
		public void saveOrUpdate(CategoryTable categoryTable);
		public CategoryTable get(String id);
		public void delete(String id);

}

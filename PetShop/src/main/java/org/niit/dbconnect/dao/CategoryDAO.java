package org.niit.dbconnect.dao;

import java.util.List;

import org.niit.dbconnect.model.CategoryTable;

public interface CategoryDAO {
	public List<CategoryTable> list();
	public CategoryTable get(String id);
	public void saveOrUpdate(CategoryTable categoryTable);
	public void delete(String id);
}

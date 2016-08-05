package org.niit.dbconnect.dao;

import java.util.List;

import org.niit.dbconnect.model.ProductTable;

public interface ProductDAO {

	public ProductTable get(String id);
	public List<ProductTable> list();
	public void saveOrUpdate(ProductTable productTable);
	public void delete(String id);
}

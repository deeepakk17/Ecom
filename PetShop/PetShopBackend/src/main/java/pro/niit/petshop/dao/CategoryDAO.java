package pro.niit.petshop.dao;

import java.util.List;

import pro.niit.petshop.model.CategoryDetails;

public interface CategoryDAO {

	public List<CategoryDetails> list();
	public CategoryDetails get(String id);
	public void saveOrUpdate(CategoryDetails categoryDetails);
	public void delete(String id);
}

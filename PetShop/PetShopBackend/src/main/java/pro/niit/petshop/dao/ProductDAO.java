package pro.niit.petshop.dao;

import java.util.List;

import pro.niit.petshop.model.ProductDetails;

public interface ProductDAO {

	public ProductDetails get(String id);
	public List<ProductDetails> list();
	public void saveOrUpdate(ProductDetails productDetails);
	public void delete(String id);
}

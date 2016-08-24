package pro.niit.petshop.dao;


import java.util.List;



import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import pro.niit.petshop.model.ProductDetails;


@Repository("productDAO")
public class ProductDAOImpl implements ProductDAO {

	@Autowired
	public SessionFactory sessionFactory;
	
	
	public ProductDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory=sessionFactory;
	}
	
	@Transactional
	public void saveOrUpdate(ProductDetails productDetails) {
		sessionFactory.getCurrentSession().saveOrUpdate(productDetails);
	}
	
	@Transactional
	public ProductDetails get(String id) {
		String hql="FROM ProductDetails WHERE id = " + "'" + id + "'";
		Query query=(Query) sessionFactory.getCurrentSession().createQuery(hql);
		
		@SuppressWarnings("unchecked")
		List<ProductDetails> listProduct = query.list();
		if(listProduct!= null && !listProduct.isEmpty()) {
			return listProduct.get(0);
		}
		
		return null;
	}
	
	@Transactional
	public void delete(String id) {
		ProductDetails productToDelete = new ProductDetails();
		productToDelete.setId(id);
		sessionFactory.getCurrentSession().delete(productToDelete);
		
	}
	
	@Transactional
	public List<ProductDetails> list() {
		
		@SuppressWarnings("unchecked")
		List<ProductDetails> listProduct =(List<ProductDetails>) sessionFactory.getCurrentSession().createCriteria(ProductDetails.class).setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		System.out.println("n prduct dao");
		return listProduct;
	}
}

package org.niit.dbconnect.dao;


import java.util.List;



import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.niit.dbconnect.model.ProductTable;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


@Repository("productDAO")
public class ProductDAOImpl implements ProductDAO {

	@Autowired
	public SessionFactory sessionFactory;
	
	
	public ProductDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory=sessionFactory;
	}
	
	@Transactional
	public void saveOrUpdate(ProductTable productTable) {
		sessionFactory.getCurrentSession().saveOrUpdate(productTable);
	}
	
	@Transactional
	public ProductTable get(String id) {
		String hql="FROM ProductTable WHERE ID = " + "'" + id + "'";
		Query query=(Query) sessionFactory.getCurrentSession().createQuery(hql);
		
		@SuppressWarnings("unchecked")
		List<ProductTable> listProduct = query.list();
		if(listProduct!= null && !listProduct.isEmpty()) {
			return listProduct.get(0);
		}
		
		return null;
	}
	
	@Transactional
	public void delete(String id) {
		ProductTable productToDelete = new ProductTable();
		productToDelete.setId(id);
		sessionFactory.getCurrentSession().delete(productToDelete);
		
	}
	
	@Transactional
	public List<ProductTable> list() {
		
		@SuppressWarnings("unchecked")
		List<ProductTable> listProduct =(List<ProductTable>) sessionFactory.getCurrentSession().createCriteria(ProductTable.class).setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		return listProduct;
	}
}

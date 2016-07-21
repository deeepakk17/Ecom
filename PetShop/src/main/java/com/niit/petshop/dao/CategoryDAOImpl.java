package com.niit.petshop.dao;

import java.util.List;





import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.petshop.model.CategoryTable;

@Repository("CategoryDAO")
public class CategoryDAOImpl implements CategoryDAO {
	
	@Autowired
	public SessionFactory sessionFactory;
	
	public CategoryDAOImpl(SessionFactory sessionFactory) {
			this.sessionFactory=sessionFactory;
	}	
	
	@Transactional
	public void saveOrUpdate(CategoryTable categoryTable) {
		sessionFactory.getCurrentSession().saveOrUpdate(categoryTable);
	}
	
	@Transactional
	public void delete(String id) {
		CategoryTable categoryToDelete = new CategoryTable();
		categoryToDelete.setCategory_id(id);
		sessionFactory.getCurrentSession().delete(categoryToDelete);
		
	}
	
	@Transactional
	public CategoryTable get(String id) {
		String hql="from category where categoryid =" + "'" + id + "'";
		Query query=sessionFactory.getCurrentSession().createQuery(hql);
		
		@SuppressWarnings("unchecked")
		List<CategoryTable> listCategory = query.list();
		
		if( listCategory!=null && !listCategory.isEmpty() ) {
			return listCategory.get(0);
			
		}
		return null;
	}
	
	
	
	@Transactional
	public List<CategoryTable> list() {
		
		@SuppressWarnings("unchecked")
		List<CategoryTable> listCategory =(List<CategoryTable>) 
											sessionFactory.getCurrentSession()
											.createCriteria(CategoryTable.class)
											.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		return listCategory;
	}
	
}

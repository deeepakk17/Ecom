package pro.niit.petshop.dao;

import java.util.List;


import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import pro.niit.petshop.model.CategoryDetails;

@Repository
public class CategoryDAOImpl implements CategoryDAO {

	@Autowired
	public SessionFactory sessionFactory;
	
	public CategoryDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory=sessionFactory;
}
	
	@Transactional
	public List<CategoryDetails> list() {
		@SuppressWarnings("unchecked")
		List<CategoryDetails> listCategory =(List<CategoryDetails>) sessionFactory.getCurrentSession().createCriteria(CategoryDetails.class).setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		return listCategory;
	}

	@Transactional
	public CategoryDetails get(String id) {
		String hql="from CategoryDetails where id =" + "'" + id + "'";
		Query query=sessionFactory.getCurrentSession().createQuery(hql);
		
		@SuppressWarnings("unchecked")
		List<CategoryDetails> listCategory = query.list();
		
		if(listCategory!= null && !listCategory.isEmpty()) {
			return listCategory.get(0);
			
		}
		return null;
	}

	@Transactional
	public void saveOrUpdate(CategoryDetails categoryDetails) {
		sessionFactory.getCurrentSession().saveOrUpdate(categoryDetails);
	}

	@Transactional
	public void delete(String id) {
		CategoryDetails categoryToDelete = new CategoryDetails();
		categoryToDelete.setId(id);
		sessionFactory.getCurrentSession().delete(categoryToDelete);
		
	}

}

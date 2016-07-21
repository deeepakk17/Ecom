package com.niit.petshop.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.petshop.model.PetsTable;

@Repository("petsDAO")
public class PetsDAOImpl implements PetsDAO {
	
	@Autowired
	public SessionFactory sessionFactory;
	
	public PetsDAOImpl(SessionFactory sessionFactory) {
			this.sessionFactory=sessionFactory;
	}	
	
	@Transactional
	public void saveOrUpdate(PetsTable petsTable) {
		saveOrUpdate(petsTable);
	}
	
	@Transactional
	public void delete(String id) {
		PetsTable petsToDelete = new PetsTable();
		petsToDelete.setPet_id(id);
		sessionFactory.getCurrentSession().delete(petsToDelete);
		
	}
	
	@Transactional
	public PetsTable get(String id) {
		String hql="from category where id =" + "'" + id + "'";
		Query query=sessionFactory.getCurrentSession().createQuery(hql);
		
		@SuppressWarnings("unchecked")
		List<PetsTable> listPets = query.list();
		
		if(listPets!= null && !listPets.isEmpty()) {
			return listPets.get(0);
			
		}
		return null;
	}
	
	
	@Transactional
	public List<PetsTable> list() {
		
		@SuppressWarnings("unchecked")
		List<PetsTable> listPets =(List<PetsTable>) sessionFactory.getCurrentSession().createCriteria(PetsTable.class).setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		return listPets;
	}
	
}

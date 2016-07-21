package com.niit.petshop.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.petshop.model.UsersTable;

@Repository("usersDAO")
public class UsersDAOImpl implements UsersDAO {
	
	@Autowired
	public SessionFactory sessionFactory;
	
	public UsersDAOImpl(SessionFactory sessionFactory) {
			this.sessionFactory=sessionFactory;
	}	
	
	@Transactional
	public void saveOrUpdate(UsersTable usersTable) {
		saveOrUpdate(usersTable);
	}
	
	@Transactional
	public void delete(String id) {
		UsersTable usersToDelete = new UsersTable();
		usersToDelete.setUser_id(id);
		sessionFactory.getCurrentSession().delete(usersToDelete);
		
	}
	
	@Transactional
	public UsersTable get(String id) {
		String hql="from category where id =" + "'" + id + "'";
		Query query=sessionFactory.getCurrentSession().createQuery(hql);
		
		@SuppressWarnings("unchecked")
		List<UsersTable> listUsers = query.list();
		
		if(listUsers!= null && !listUsers.isEmpty()) {
			return listUsers.get(0);
			
		}
		return null;
	}
	
	
	@Transactional
	public List<UsersTable> list() {
		
		@SuppressWarnings("unchecked")
		List<UsersTable> listUsers =(List<UsersTable>) sessionFactory.getCurrentSession().createCriteria(UsersTable.class).setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		return listUsers;
	}
	
}

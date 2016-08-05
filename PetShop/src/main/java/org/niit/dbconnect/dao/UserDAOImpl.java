package org.niit.dbconnect.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.niit.dbconnect.model.UserDetails;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
public class UserDAOImpl implements UserDAO {

	@Autowired
	public SessionFactory sessionFactory;

	public UserDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Transactional
	public void saveOrUpdate(UserDetails userDetails) {
		sessionFactory.getCurrentSession().saveOrUpdate(userDetails);
	}

	@Transactional
	public boolean checkUser(UserDetails userDetails) {
		boolean isvaliduser = false;

		String hql="from USER_DETAILS where USER_NAME= '" + userDetails.getUsername() + "' and PASSWORD='" + userDetails.getPassword() + "'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<UserDetails> list = query.list();
		int size = list.size();
		if (size == 1) {
			isvaliduser = true;
		}

		return isvaliduser;
	}

}

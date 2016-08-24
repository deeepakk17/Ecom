package pro.niit.petshop.dao;

import java.util.List;



import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import pro.niit.petshop.model.UserDetails;
import pro.niit.petshop.model.UserRole;

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
	public void saveOrUpdate(UserRole userRole) {
		sessionFactory.getCurrentSession().saveOrUpdate(userRole);
	}

	@Transactional
	public boolean checkUser(UserDetails userDetails) {
		boolean isvaliduser = false;

		String hql="from UserDetails where username= '" + userDetails.getUsername() + "' and password='" + userDetails.getPassword() + "'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<UserDetails> list = query.list();
		int size = list.size();
		if (size == 1) {
			isvaliduser = true;
			
		}

		return isvaliduser;
	}
	
	@Transactional
	public boolean isAdmin(UserDetails userDetails) {
		boolean isadmin ;
		if(userDetails.getUsername()=="admin") {
			isadmin = true;
		}else{
			
			isadmin = false;
		}
		return isadmin;
	}

}

package pro.niit.petshop.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import pro.niit.petshop.dao.UserDAO;
import pro.niit.petshop.model.UserDetails;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired 
	private UserDAO userDAO;

	@Transactional
	public void saveOrUpdate(UserDetails userDetails) {
		userDAO.saveOrUpdate(userDetails);
	}

}

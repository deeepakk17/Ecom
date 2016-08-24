package pro.niit.petshop.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import pro.niit.petshop.dao.UserDAO;
import pro.niit.petshop.model.UserDetails;
import pro.niit.petshop.model.UserRole;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired 
	private UserDAO userDAO;
	
	

	@Transactional
	public void saveOrUpdate(UserDetails userDetails) {
		userDetails.setEnabled(true);
		userDAO.saveOrUpdate(userDetails);
		UserRole userRole = new UserRole();
		userRole.setRole("ROLE_USER");
		userRole.setUsername(userDetails);
		userDAO.saveOrUpdate(userRole);
		
	}

}

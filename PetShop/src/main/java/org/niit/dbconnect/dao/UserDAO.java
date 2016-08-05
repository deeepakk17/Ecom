package org.niit.dbconnect.dao;

import org.niit.dbconnect.model.UserDetails;

public interface UserDAO {

	
	
	//public List<UserDetails> list();
	//public UserDetails get(String id);
	public void saveOrUpdate(UserDetails userDetails);
	/*public void delete(String id);*/
	
	public boolean checkUser(UserDetails userDetails);
}

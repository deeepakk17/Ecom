package com.niit.petshop.dao;
import java.util.List;

import com.niit.petshop.model.UsersTable;

public interface UsersDAO {

	public List<UsersTable> list();
	public UsersTable get(String id);
	public void saveOrUpdate(UsersTable usersTable);
	public void delete(String id);

}

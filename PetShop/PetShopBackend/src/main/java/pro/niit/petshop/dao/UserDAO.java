package pro.niit.petshop.dao;

import pro.niit.petshop.model.UserDetails;

public interface UserDAO {


		public void saveOrUpdate(UserDetails userDetails);
		
		public boolean checkUser(UserDetails userDetails);

		public boolean isAdmin(UserDetails userDetails);
}

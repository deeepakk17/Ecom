package pro.niit.petshop.dao;

import pro.niit.petshop.model.UserDetails;
import pro.niit.petshop.model.UserRole;

public interface UserDAO {


		public void saveOrUpdate(UserDetails userDetails);
		
		public void saveOrUpdate(UserRole userRole);
		
		public boolean checkUser(UserDetails userDetails);

		public boolean isAdmin(UserDetails userDetails);
}

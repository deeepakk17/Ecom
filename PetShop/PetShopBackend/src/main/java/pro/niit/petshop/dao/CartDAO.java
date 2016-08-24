package pro.niit.petshop.dao;

import java.util.List;

import pro.niit.petshop.model.Cart;
import pro.niit.petshop.model.UserDetails;

public interface CartDAO {

	public void saveOrUpdate(Cart cart);
	public List<Cart> list();
	public Cart get(UserDetails username);
	public void delete(UserDetails username);
}

package pro.niit.petshop.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import pro.niit.petshop.model.Cart;
import pro.niit.petshop.model.UserDetails;


@Repository("cartDAO")
public class CartDAOImpl implements CartDAO{
	
	@Autowired
	public SessionFactory sessionFactory;
	

	@Transactional
	public void saveOrUpdate(Cart cart) {
		sessionFactory.getCurrentSession().saveOrUpdate(cart);
	}

	@Transactional
	public List<Cart> list() {
		@SuppressWarnings("unchecked")
		List<Cart> list = (List<Cart>) sessionFactory.getCurrentSession().createCriteria(Cart.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();

		return list;
	}

	@Transactional
	public Cart get(UserDetails username) {
		String hql = "from Cart where username=" + "'" + username + "'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);

		@SuppressWarnings("unchecked")
		List<Cart> list = (List<Cart>) query.list();

		if (list != null && !list.isEmpty()) {
			return list.get(0);
		}

		return null;
	}

	@Transactional
	public void delete(UserDetails username) {
		Cart cart = new Cart();
		cart.setUsername(username);
		sessionFactory.getCurrentSession().delete(cart);
	}

	

}

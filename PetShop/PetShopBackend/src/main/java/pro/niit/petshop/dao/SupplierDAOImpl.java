package pro.niit.petshop.dao;


import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import pro.niit.petshop.model.SupplierDetails;

@Repository
public class SupplierDAOImpl implements SupplierDAO {

	@Autowired
	public SessionFactory sessionFactory;

	public SupplierDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Transactional
	public void saveOrUpdate(SupplierDetails supplierDetails) {
		sessionFactory.getCurrentSession().saveOrUpdate(supplierDetails);
	}

}
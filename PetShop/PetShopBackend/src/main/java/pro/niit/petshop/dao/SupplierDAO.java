package pro.niit.petshop.dao;



import pro.niit.petshop.model.SupplierDetails;

public interface SupplierDAO {
	//public List<SupplierDetails> list();
	//public SupplierDetails get(String id);
	public void saveOrUpdate(SupplierDetails supplierDetails);
	//public void delete(String id);
}

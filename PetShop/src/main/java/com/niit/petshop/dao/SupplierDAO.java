package com.niit.petshop.dao;
import java.util.List;
import com.niit.petshop.model.SupplierTable;

public interface SupplierDAO {
	public List<SupplierTable> list();
	public SupplierTable get(String id);
	public void saveOrUpdate(SupplierTable supplierTable);
	public void delete(String id);

}

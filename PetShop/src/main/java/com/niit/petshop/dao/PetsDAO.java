package com.niit.petshop.dao;

import java.util.List;

import com.niit.petshop.model.PetsTable;



public interface PetsDAO {
	
	public List<PetsTable> list();
	public PetsTable get(String id);
	public void saveOrUpdate(PetsTable petsTable);
	public void delete(String id);
}

package com.niit.petshop.model;

public class PetsTable {

	public String pet_id;						//primarykey
	private String pet_name;
	private int pet_age;
	private String pet_country;
	private String category_id;		//foreignkey
	private String supplier_id;		//foreignkey
	public String getPet_id() {
		return pet_id;
	}
	public void setPet_id(String pet_id) {
		this.pet_id = pet_id;
	}
	public String getPet_name() {
		return pet_name;
	}
	public void setPet_name(String pet_name) {
		this.pet_name = pet_name;
	}
	public int getPet_age() {
		return pet_age;
	}
	public void setPet_age(int pet_age) {
		this.pet_age = pet_age;
	}
	public String getPet_country() {
		return pet_country;
	}
	public void setPet_country(String pet_country) {
		this.pet_country = pet_country;
	}
	public String getCategory_id() {
		return category_id;
	}
	public void setCategory_id(String category_id) {
		this.category_id = category_id;
	}
	public String getSupplier_id() {
		return supplier_id;
	}
	public void setSupplier_id(String supplier_id) {
		this.supplier_id = supplier_id;
	}
	
	
	
}

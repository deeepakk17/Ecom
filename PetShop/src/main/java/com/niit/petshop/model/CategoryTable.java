package com.niit.petshop.model;

import javax.persistence.Column;
import javax.persistence.Entity;


import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;



@Entity
@Table(name="category")
@Component
public class CategoryTable {
	
	
	@Column(name="categoryid")
	public String category_id; //primarykey
	
	@Column(name="categoryname")
	private String category_name;
	
	@Column(name="supplierid")
	private String supplier_id; //foreignkey

	@Id public String getCategory_id() {
		return category_id;
	}

	public void setCategory_id(String category_id) {
		this.category_id = category_id;
	}

	public String getCategory_name() {
		return category_name;
	}

	public void setCategory_name(String category_name) {
		this.category_name = category_name;
	}

	public String getSupplier_id() {
		return supplier_id;
	}

	public void setSupplier_id(String supplier_id) {
		this.supplier_id = supplier_id;
	}
	
	
	
	
	
}





package org.niit.dbconnect.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table(name="PRODUCT_TABLE")
@Component("productTable")
public class ProductTable {
	@Id
	@Column(name="ID")
	private String id; 
	
	@Column(name="NAME")
	private String name;
	
	@Column(name="PRICE")
	private int price;
	
	@Column(name="DESCRIPTION")
	private String description;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	
	
	
	
}

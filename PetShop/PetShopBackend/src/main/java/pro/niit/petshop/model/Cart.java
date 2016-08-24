package pro.niit.petshop.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table
@Component
public class Cart {

	@Id @GeneratedValue(strategy=GenerationType.AUTO)
	private int id;			
	private UserDetails username;
	private ProductDetails product;
	private int price;
	private int quantity;	
	private int total;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public UserDetails getUsername() {
		return username;
	}
	public void setUsername(UserDetails username) {
		this.username = username;
	}
	public ProductDetails getProduct() {
		return product;
	}
	public void setProduct(ProductDetails product) {
		this.product = product;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	
	
	
}

package pro.niit.petshop.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Size;

import org.springframework.stereotype.Component;

@Entity
@Table(name="CATEGORY_DETAILS")
@Component
public class CategoryDetails {

	@Id
	@Size(min = 3, message="Category ID must be atleast 3 characters !")
	@Column(name = "ID")
	private String id;

	@Size(min = 3, message="Category Name must be atleast 3 characters !")
	@Column(name = "NAME")
	private String name;

	@Size(min = 3, message="Category description must be atleast 3 characters !")
	@Column(name = "DESCRIPTION")
	private String description;
	
	
	/*private Set<ProductDetails> products;
	
	@OneToMany(mappedBy="category",fetch = FetchType.EAGER)
	public Set<ProductDetails> getProducts() {
		return products;
	}

	public void setProducts(Set<ProductDetails> products) {
		this.products = products;
	}*/

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

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	@Override
	public String toString() {
		return "CategoryDetails [id=" + id + ", name=" + name + ", description=" + description + "]";
	}

	
	
	
}

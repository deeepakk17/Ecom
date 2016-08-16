package pro.niit.petshop.model;



import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@Entity
@Table(name="PRODUCT_TABLE")
@Component
public class ProductDetails {
	
	
		@Id
		@Size(min = 3,message="Product ID must be atleast 3 characters !")
		@Column(name="ID")
		private String id; 
		
		@Size(min = 3,max=15, message="Productname must be atleast 3 characters !")
		@Column(name="NAME")
		private String name;
		
		@NotNull(message="Price cannot be null !")
		@Column(name="PRICE")
		private int price;
		
		@Size(min = 5,max=50, message="Product description must be atleast 5 characters !")
		@Column(name="DESCRIPTION")
		private String description;

		@Transient
		MultipartFile multipartFile;
		
		@Column(name="LOCATION")
		private String location;
		
		
		private String categoryname;
		
		public String getCategoryname() {
			return categoryname;
		}

		public void setCategoryname(String categoryname) {
			this.categoryname = categoryname;
		}

		/*@ManyToOne
		@JoinColumn(name="categoryid", nullable = false, updatable = false, insertable = false)
		private CategoryDetails category;
		
		public CategoryDetails getCategory() {
			return category;
		}

		public void setCategory(CategoryDetails category) {
			this.category = category;
		}*/
		

		public String getLocation() {
			return location;
		}

		public void setLocation(String location) {
			this.location = location;
		}

		public MultipartFile getMultipartFile() {
			return multipartFile;
		}

		public void setMultipartFile(MultipartFile multipartFile) {
			this.multipartFile = multipartFile;
		}
		
		
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

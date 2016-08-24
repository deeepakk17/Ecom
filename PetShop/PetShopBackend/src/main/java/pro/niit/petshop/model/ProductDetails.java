package pro.niit.petshop.model;



import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@Entity
@Table(name="PRODUCT_DETAILS")
@Component
public class ProductDetails {
	
	
		@Id
		@NotEmpty(message="Product ID cannot be Empty !")
		@Column(name="ID")
		private String id; 
		
		@NotEmpty(message="Productname cannot be Empty  !")
		@Column(name="NAME")
		private String name;
		
		@NotNull(message="Price cannot be null !")
		@Column(name="PRICE")
		private int price;
		
		@NotEmpty(message="Product description cannot be Empty  !")
		@Column(name="DESCRIPTION")
		private String description;

		@NotNull(message="Select a file of size below  1 mb!")
		@Transient
		MultipartFile multipartFile;		
				
		@NotEmpty(message="Select a category  !")
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

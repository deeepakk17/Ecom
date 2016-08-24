package pro.niit.petshop.model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table(name = "USER_ROLE")
@Component
public class UserRole  {

	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name = "USER_ROLE_ID")
	private int userroleid;
	
	@Column(name = "ROLE", columnDefinition = "varchar(15)")
	private String role;
	
	//@Size(min = 3, message = "Username must be atleast 3 characters !")
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="username")
	private UserDetails username;

	
	public int getUserroleid() {
		return userroleid;
	}

	public void setUserroleid(int userroleid) {
		this.userroleid = userroleid;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public UserDetails getUsername() {
		return username;
	}

	public void setUsername(UserDetails username) {
		this.username = username;
	}
	
	
	
}

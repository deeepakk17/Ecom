package pro.niit.petshop.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.Size;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.binding.message.MessageBuilder;
import org.springframework.binding.message.MessageContext;
import org.springframework.stereotype.Component;

import pro.niit.petshop.dao.UserDAO;

/**
 * @author Project
 *
 */
@Entity
@Table(name = "USER_DETAILS")
@Component
public class UserDetails implements Serializable {
	
	
	// Pojo class for user table

	@Transient
	private static final long serialVersionUID = 4657462015039726030L;
	
	@Id
	//@Size(min = 3, message = "Username must be atleast 3 characters !")
	@Column(name = "USER_NAME", columnDefinition = "varchar(15)")
	private String username;

	//@Size(min = 3, message = "Firstname must be atleast 3 characters !")
	@Column(name = "FIRST_NAME", columnDefinition = "varchar(25)")
	private String firstname;

	//@Size(min = 1, message = "Lastname must be atleast 1 characters !")
	@Column(name = "LAST_NAME", columnDefinition = "varchar(25)")
	private String lastname;

	//@Size(min = 10, max = 10, message = "Mobilenumber must be 10 characters !")
	@Column(name = "MOBILE_NUMBER", columnDefinition = "number(10)")
	private String mobilenumber;

	//@Size(min = 5, max = 15, message = "Password must be atleast 5 - 15 characters !")
	@Column(name = "PASSWORD", columnDefinition = "varchar(15)")
	private String password;

	//@Size(min = 5, max = 15, message = "Password must be atleast 5 - 15 characters !")
	@Transient
	@Column(name = "CONFIRM_PASSWORD", columnDefinition = "varchar(15)")
	private String confirmpassword;

	@Column(name = "ENABLED",nullable=false)
	private boolean enabled = true;

	

	public boolean isEnabled() {
		return enabled;
	}

	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getMobilenumber() {
		return mobilenumber;
	}

	public void setMobilenumber(String mobilenumber) {
		this.mobilenumber = mobilenumber;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getConfirmpassword() {
		return confirmpassword;
	}

	public void setConfirmpassword(String confirmpassword) {
		this.confirmpassword = confirmpassword;
	}

	@Override
	public String toString() {
		return "UserDetails [username=" + username + ", firstname=" + firstname + ", lastname=" + lastname
				+ ", mobilenumber=" + mobilenumber + ", password=" + password + ", confirmpassword=" + confirmpassword
				+ ", enabled=" + enabled + "]";
	}

	

	

	

}

package pro.niit.petshop.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.Size;

import org.springframework.binding.message.MessageBuilder;
import org.springframework.binding.message.MessageContext;
import org.springframework.stereotype.Component;

/**
 * @author Project
 *
 */
@Entity
@Table(name = "USER_DETAILS")
@Component()
public class UserDetails implements Serializable {
	// Pojo class for user table

	@Transient
	private static final long serialVersionUID = 4657462015039726030L;
	
	@Id
	//@Size(min = 3, message = "Username must be atleast 3 characters !")
	@Column(name = "USER_NAME", unique = true, columnDefinition = "varchar(15)")
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

	@Column(name = "ISADMIN", columnDefinition = "number(1)")
	private int isadmin = 0;

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

	public int getIsadmin() {
		return isadmin;
	}

	public void setIsadmin(int isadmin) {
		this.isadmin = isadmin;
	}

	public UserDetails initFlow() {
		return new UserDetails();
	}

	public String validateDetails(UserDetails userDetails, MessageContext messageContext) {
		String status = "success";
		if (userDetails.getUsername().isEmpty()) {
			messageContext.addMessage(
					new MessageBuilder().error().source("username").defaultText("Username cannot be Empty").build());
			status = "failure";
		}
		if (userDetails.getFirstname().isEmpty()) {
			messageContext.addMessage(
					new MessageBuilder().error().source("firstname").defaultText("Firstname cannot be Empty").build());
			status = "failure";
		}
		if (userDetails.getLastname().isEmpty()) {
			messageContext.addMessage(
					new MessageBuilder().error().source("lastname").defaultText("Lastname cannot be Empty").build());
			status = "failure";
		}
		if (userDetails.getMobilenumber().isEmpty()) {
			messageContext.addMessage(new MessageBuilder().error().source("mobilenumber")
					.defaultText("Mobilenumber cannot be Empty").build());
			status = "failure";
		}
		if (userDetails.getPassword().isEmpty()) {
			messageContext.addMessage(
					new MessageBuilder().error().source("password").defaultText("Password cannot be Empty").build());
			status = "failure";
		}
		if (userDetails.getConfirmpassword().isEmpty()) {
			messageContext.addMessage(new MessageBuilder().error().source("confirmpassword")
					.defaultText("Confirmpassword cannot be Empty").build());
			status = "failure";
		}
		return status;
	}

}
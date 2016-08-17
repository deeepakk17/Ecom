package pro.niit.petshop.model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.hibernate.annotations.GeneratorType;
import org.springframework.stereotype.Component;

@Entity
@Table(name = "USER_ROLE")
@Component
public class UserRole  {

	@Transient
	private static final long serialVersionUID = 4657462015039726030L;
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name = "USER_ROLE_ID")
	private String userroleid;
	
	@Column(name = "ROLE",unique=true, columnDefinition = "varchar(15)")
	private String role;
	
	//@Size(min = 3, message = "Username must be atleast 3 characters !")
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="username")
	private UserDetails username;
	
	
	
}

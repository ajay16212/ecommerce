package model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.NotBlank;

@Entity
@Table(name="coustemer")
public class register implements Serializable {
	private static final String USER = null;
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int sNo;
	private String firstName;
	private String lastName;
	private String mobileNumber;
	private String email;
	private String password; 
	@Transient
	private String rePassword;
	private String role;
	
	public register() {
	
}
	public register( String firstName, String lastName, String mobileNumber, String email, String password ,String role){
		
		this.firstName = firstName;
		this.lastName = lastName;
		this.mobileNumber = mobileNumber;
		this.email = email;
		this.password = password;
		this.rePassword = rePassword;
		this.enabled = enabled;
		
		
	}
	/**String pass ="password";
	   String repass ="repassword";
	   (pass.equals( repass));**/
	private boolean enabled = true;
	
	public String getRole() {
		return role;
	}
	public void setRole(String USER) {
		this.role = USER;
	}
	public boolean isEnabled() {
		return enabled;
	}
	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}
	
	public int getsNo() {
		return sNo;
	}
	public void setsNo(int sNo) {
		this.sNo = sNo;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getMobileNumber() {
		return mobileNumber;
	}
	public void setMobileNumber(String mobileNumber) {
		this.mobileNumber = mobileNumber;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getRePassword() {
		return rePassword;
	}
	public void setRePassword(String rePassword) {
		this.rePassword = rePassword;
	}
	
}

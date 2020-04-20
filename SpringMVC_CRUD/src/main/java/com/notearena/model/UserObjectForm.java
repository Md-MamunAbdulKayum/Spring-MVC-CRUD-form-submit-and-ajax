package com.notearena.model;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="user")  
public class UserObjectForm implements Serializable {
	@Id
	@Column(name="id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private String firstName;
	private String lastName;
	private int age;
	private String email;
	private String userName;
	private String password;
	private int status;
	
	
	public UserObjectForm() {
		super();
	}

	/**
	 * 
	 * @param id
	 * @param firstName
	 * @param lastName
	 * @param age
	 * @param email
	 * @param userName
	 * @param password
	 * @param status
	 */
	public UserObjectForm(int id, String firstName, String lastName, int age, String email, String userName,
			String password, int status) {
		super();
		this.id = id;
		this.firstName = firstName;
		this.lastName = lastName;
		this.age = age;
		this.email = email;
		this.userName = userName;
		this.password = password;
		this.status = status;
	}
	
	/**
	 * 
	 * @param firstName
	 * @param lastName
	 * @param age
	 * @param email
	 * @param userName
	 * @param password
	 * @param status
	 */
	public UserObjectForm(String firstName, String lastName, int age, String email, String userName, String password,
			int status) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.age = age;
		this.email = email;
		this.userName = userName;
		this.password = password;
		this.status = status;
	}


	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
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

	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	@Override
	public String toString() {
		return "UserObjectForm [firstName=" + firstName + ", lastName=" + lastName + ", age=" + age
				+ ", email=" + email + ", userName=" + userName + ", password=" + password + ", status=" + status + "]";
	}



	
}

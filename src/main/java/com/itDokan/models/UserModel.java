package com.itDokan.models;

import java.sql.Date;
import java.time.LocalDate;

public class UserModel {

	private String userName, firstName, lastName, gender, address, email, phoneNumber, password;
	private Date dob;
	private int id;
	
	public UserModel(String userName, String firstName, String lastName, Date dob, String gender, String email, String phoneNumber, String address, String password) {
		this.userName = userName;
		this.firstName = firstName;
		this.lastName = lastName;
		this.gender= gender;
		this.address = address;
		this.email = email;
		this.phoneNumber = phoneNumber;
		this.password = password;
		this.dob = dob;
	}
	
	
	
	public UserModel(String userName, String firstName, String lastName, String gender, String address, String email,
			String phoneNumber, Date dob, int id) {
		super();
		this.userName = userName;
		this.firstName = firstName;
		this.lastName = lastName;
		this.gender = gender;
		this.address = address;
		this.email = email;
		this.phoneNumber = phoneNumber;
		this.dob = dob;
		this.id = id;
	}



	public Date getDob() {
		return dob;
	}
	public void setDob(	Date dob) {
		this.dob = dob;
	}
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getId() {
		return id;
	}

}

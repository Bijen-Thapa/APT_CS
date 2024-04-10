package com.itDokan.models;

import java.time.LocalDate;

public class UserModel {

	private String userName, firstName, lastName, gender, address, email, phoneNo, password;
	private LocalDate dob;
	
	public UserModel(String userName, String firstName, String lastName, String gender, String address, String email, String phoneNo, String password, LocalDate dob) {
		this.userName = userName;
		this.firstName = firstName;
		this.lastName = lastName;
		this.gender= gender;
		this.address = address;
		this.email = email;
		this.phoneNo = phoneNo;
		this.password = password;
		this.dob = dob;
	}
	
	public LocalDate getDob() {
		return dob;
	}
	public void setDob(LocalDate dob) {
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
	
	public String getPhoneNo() {
		return phoneNo;
	}
	public void setPhoneNo(String phoneNo) {
		this.phoneNo = phoneNo;
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
	

}

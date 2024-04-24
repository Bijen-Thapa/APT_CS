package model;

import java.io.Serializable;
import java.time.LocalDate;
public class StudentModel implements Serializable {
	private static final long serialVersionUID = 1L;
	private String firstName;
	private String lastName;
	private LocalDate dob;
	private String gender;
	private String email;
	private String phoneNumber;
	private String subject;
	private String username;
	private String password;
		
		public StudentModel(String firstName, String lastName, LocalDate dob,
				String gender, String email, String phoneNumber, String subject,
				String username, String password) {
			
			this.setFirstName(firstName);
			this.setLastName(lastName);
			this.setDob(dob);
			this.setGender(gender);
			this.setEmail(email);
			this.setPhoneNumber(phoneNumber);
			this.setSubject(subject);
			this.setUsername(username);
			this.setPassword(password);
		}

		public String getUsername() {
			return username;
		}

		public String getFirstName() {
			return firstName;
		}

		public String getLastName() {
			return lastName;
		}

		public LocalDate getDob() {
			return dob;
		}

		public String getGender() {
			return gender;
		}

		public String getEmail() {
			return email;
		}

		public String getPhoneNumber() {
			return phoneNumber;
		}

		public String getSubject() {
			return subject;
		}

		public String getPassword() {
			return password;
		}

		public void setFirstName(String firstName) {
			this.firstName = firstName;
		}

		public void setLastName(String lastName) {
			this.lastName = lastName;
		}

		public void setDob(LocalDate dob) {
			this.dob = dob;
		}

		public void setGender(String gender) {
			this.gender = gender;
		}

		public void setEmail(String email) {
			this.email = email;
		}

		public void setPhoneNumber(String phoneNumber) {
			this.phoneNumber = phoneNumber;
		}

		public void setSubject(String subject) {
			this.subject = subject;
		}

		public void setUsername(String username) {
			this.username = username;
		}

		public void setPassword(String password) {
			this.password = password;
		}

}

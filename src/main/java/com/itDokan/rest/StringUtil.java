package com.itDokan.rest;

public class StringUtil {

	public static final String INSERT_USER = "INSERT INTO user "
			+ "(user_name, first_name, last_name, gender, dob, phone_number, email, address, password) "
			+ "VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?)";
	
	public static String INSERT_PRODUCT = "INSERT INTO product"
			+ "(id, name, image, img_path, description, price)"
			+ "VALUES('', ?, ?, '', ?, ?)";
	
	public static final String GET_LOGIN_USER_INFO = "SELECT * FROM user_info WHERE user_name = ? AND password = ?";
	
	public static final String SUCCESS_MESSAGE = "successMessage";
	
	public static final String SUCCESS_REGISTER_MESSAGE ="Successfully registered";
	
	public static final String SERVER_ERROR_MESSAGE ="An unexpected server error occured";
	public static final String REGISTER_PAGE ="/view/Pages/registrations.jsp";
	
	public static final String ERROR_MESSAGE = "error message";
	
	public static final String REGISTER_ERROR_MESSAGE = "Please correct the form data";
	
	//for checking validations
	public static final String GET_USERNAME ="SELECT COUNT(*) FROM user_info WHERE user_name = ?";
	public static final String GET_PHONE = "SELECT COUNT(*) FROM user_info WHERE phone_number = ?";
	public static final String GET_EMAIL = "SELECT COUNT(*) FROM user_info WHERE email = ?";
	
	
	public static final String USERNAME_ERROR_MESSAGE = "Username is already registered";
	public static final String EMAIL_ERROR_MESSAGE = "Email already registered";
	public static final String PHONE_NUMBER_ERROR_MESSAGE = "Phone number already registered";
	
	public static final String PASSWORD_ENCRYPTION = "SELECT password FROM user_info";
}

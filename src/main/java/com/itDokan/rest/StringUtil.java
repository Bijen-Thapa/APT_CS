package com.itDokan.rest;

public class StringUtil {

	public static final String INSERT_USER = "INSERT INTO user "
			+ "(user_name, first_name, last_name, gender, dob, phone_number, email, address, password) "
			+ "VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?)";
	
	public static String INSERT_PRODUCT = "INSERT INTO product "
			+ "(id, name, description, model, qty, brand, product_category, price, image) "
			+ "VALUES (NULL, ?, ?, ?, ?, ?, ?, ?, ?)";
	
	public static String GET_USER = "SELECT * FROM user WHERE id = ?";

	public static String GET_USERNAME = "SELECT * FROM user WHERE user_name = ?";
	
	public static String GET_ORDER_list= "SELECT * FROM order_list";
	
	
	public static String  INSER_PRODUCT_CATEGORY = "INSERT INTO product_category (name, description) VALUES (?, ?);";
	
	public static final String GET_LOGIN_USER_INFO = "SELECT * FROM user_info WHERE user_name = ? AND password = ?";
	
	public static final String SUCCESS_MESSAGE = "successMessage";
	
	public static final String SUCCESS_REGISTER_MESSAGE ="Successfully registered";
	
	public static final String SERVER_ERROR_MESSAGE ="An unexpected server error occured";
	
	public static final String ERROR_MESSAGE = "error message";
	
	public static final String REGISTER_ERROR_MESSAGE = "Please correct the form data";
	
}

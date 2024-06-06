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
	
	public static String GET_PRODUCT_BY_ID= "SELECT * FROM product WHERE id = ?";
	
	public static String  INSER_PRODUCT_CATEGORY = "INSERT INTO product_category (name, description) VALUES (?, ?);";
	
	public static String GET_USER_BY_USER_NAME = "SELECT * FROM user WHERE user_name = ?";

	public static String GET_CART_ITEM= "SELECT * FROM `cart` WHERE user_id = ?";

	public static String GET_ADMIN = "SELECT * FROM user WHERE user_name = ? AND role = ?";
	
	public static final String DELETE_USER = "delete from user where id = ?;";

	public static final String DELETE_PRODUCT = "delete from product where id = ?";

	public static final String DELETE_PRODUCT_CAT = "delete from product_category where id = ?";
	
	
    public static final String UPDATE_USER = "update user set first_name = ?, last_name= ?, phone_number =?, address= ? where id = ?;";

    public static final String UPDATE_PRODUCT = "update product set name = ?,userName description= ?, qty=?, price =? product_category=? where id = ?;";
	
	public static final String GET_LOGIN_USER_INFO = "SELECT * FROM user WHERE user_name = ? AND password = ?";

	public static final String DELET_PRODUCT = "DELETE FROM `product` WHERE `product`.`id` = ?";
	
	public static final String SUCCESS_MESSAGE = "successMessage";
	
	public static final String SUCCESS_REGISTER_MESSAGE ="Successfully registered";
	
	public static final String SERVER_ERROR_MESSAGE ="An unexpected server error occured";
	
	public static final String ERROR_MESSAGE = "error message";
	
	public static final String REGISTER_ERROR_MESSAGE = "Please correct the form data";
	
}

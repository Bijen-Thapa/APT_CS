package com.itDokan.rest;

public class StringUtil {

	public static final String INSERT_USER = "INSERT INTO user_info "
			+ "(id, user_name, first_name, last_name, dob, gender, email, phone_number, address, password) "
			+ "VALUES('',?, ?, ?, ?, ?, ?, ?, ?, ?)";
	
	public static String INSERT_PRODUCT = "INSERT INTO product"
			+ "(id, name, image, img_path, description, price)"
			+ "VALUES('', ?, ?, '', ?, ?)";
	
	
	
}

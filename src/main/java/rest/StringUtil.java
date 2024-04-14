package rest;

public class StringUtil {

	public static final String INSERT_USER = "INSERT INTO user_info "
			+ "(user_name, first_name, last_name, dob, gender, email, phone_number, address, password) "
			+ "VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?)";
	
	public static final String GET_LOGIN_USER_INFO = "SELECT * FROM user_info WHERE user_name = ? AND password = ?";
	
	public static final String SUCCESS_MESSAGE = "successMessage";
	
	public static final String SUCCESS_REGISTER_MESSAGE ="Successfully registered";
	
	public static final String SERVER_ERROR_MESSAGE ="An unexpected server error occured";
	
	public static final String ERROR_MESSAGE = "error message";
	
	public static final String REGISTER_ERROR_MESSAGE = "Please correct the form data";
}
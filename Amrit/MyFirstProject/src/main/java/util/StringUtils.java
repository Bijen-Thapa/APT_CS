package util;

public class StringUtils {

	public static final String INSERT_STUDENT = "INSERT INTO student_info "
			+ "(user_name, first_name, last_name, dob, gender, email, phone_number, subject, password) "
	 		+ "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
	
	public static final String GET_LOGIN_STUDENT_INFO = "SELECT * FROM student_info WHERE user_name = ? AND password = ?";

	public static final String GET_ALL_STUDENT_INFO = "SELECT * FROM student_info";
	public static final String USER_NAME = "username"; //It has to be exactly same as the name attribute in register.jsp
	public static final String FIRST_NAME = "firstName";
	public static final String LAST_NAME = "lastName";
	public static final String BIRTHDAY = "birthday";
	public static final String GENDER = "gender";
	public static final String EMAIL = "email";
	public static final String PHONE_NUMBER = "phoneNumber";
	public static final String SUBJECT = "subject";
	public static final String PASSWORD = "password";
	public static final String RETYPE_PASSWORD = "retypePassword";
	
	//Start message
	public static final String SUCCESS_REGISTER_MESSAGE = "Successfully Registered!";
	public static final String REGISTER_ERROR_MESSAGE = "Please correct the form data.";
	public static final String SERVER_ERROR_MESSAGE = "An unexpected server error occurred.";
	public static final String SUCCESS_MESSAGE = "successMessage";
	public static final String ERROR_MESSAGE = "errorMessage";
	public static final String USERNAME_ERROR_MESSAGE = "Username is already registered.";
	public static final String EMAIL_ERROR_MESSAGE = "Email is already registered.";
	public static final String PHONE_NUMBER_ERROR_MESSAGE = "Phone number is already registered.";
	public static final String PASSWORD_UNMATCHED_ERROR_MESSAGE = "Password is not matched.";


	
	
	//Start JSP Route
	public static final String LOGIN_PAGE = "/pages/login.jsp";
	public static final String REGISTER_PAGE = "/pages/register.jsp";
	//End JSP Route
	
	//Start Servlet Route
	public static final String REGISTER_SERVLET = "/RegisterServlet";
	//End Servlet Route
	
	//Get SQL Queries
	public static final String GET_USERNAME = "SELECT COUNT(*) FROM student_info WHERE user_name = ?";
	public static final String GET_PHONE = "SELECT COUNT(*) FROM student_info WHERE phone_number = ?";
	public static final String GET_EMAIL = "SELECT COUNT(*) FROM student_info WHERE email = ?";
	
	//product
	public static final String INSERT_PRODUCT = "INSERT INTO product"
			+ "(product_id, name, quantity, img, description, price)"
			+ "VALUES(?,?,?,?,?,?)";
	
	public static final String PRODUCT_ID = "product_id";
	public static final String PRODUCT_NAME = "name";
	public static final String PRODUCT_QUANTITY = "quantity";
	public static final String PRODUCT_IMG = "img";
	public static final String PRODUCT_DESCRIPTION = "description";
	public static final String PRODUCT_PRICE = "price";
}

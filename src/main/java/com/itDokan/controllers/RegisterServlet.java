package com.itDokan.controllers;

import java.io.IOException;
import java.time.LocalDate;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itDokan.controllers.database.DatabaseController;
import com.itDokan.models.UserModel;

import com.itDokan.rest.*;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	DatabaseController dbController = new DatabaseController();
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub	
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO 
		String userName = request.getParameter("userName");
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String stringDob = request.getParameter("dob");
		LocalDate dob = LocalDate.parse(stringDob);
		String gender= request.getParameter("gender");		
		String email = request.getParameter("email");
		String phoneNumber = request.getParameter("phoneNumber");
		String address = request.getParameter("address");
		String password = request.getParameter("password");
		String repassword = request.getParameter("repassword");
		
//		System.out.println("First Name: " + firstName);
//        System.out.println("Last Name: " + lastName);
//        System.out.println("Username: " + userName);
//        System.out.println("Date of Birth: " + dob);
//        System.out.println("Gender: " + gender);
//        System.out.println("Email: " + email);
//        System.out.println("phone number: " + phoneNumber);
//        System.out.println("Address: " + address);
//        System.out.println("Password: " + password);
		
        //Name format validation
        if (!isValidName(firstName) || !isValidName(lastName)) {
            // Redirect to the registration page with an error message
        	response.sendRedirect(request.getContextPath()+ "/view/Pages/registrations.jsp?error=InvalidName");
            return;
        }
        
        
        if (password.length() < 6) {
        	response.sendRedirect(request.getContextPath()+ "/view/Pages/registrations.jsp?error=ShortPassword");
            
        	return;
        }

        if (!password.equals(repassword)) {
        	response.sendRedirect(request.getContextPath()+ "/view/Pages/registrations.jsp?error=PasswordMismatch");
            
        	return;
        }

        if (dbController.isUsernameExists(userName)) {
            // Redirect to the registration page with an error message
        	response.sendRedirect(request.getContextPath()+ "/view/Pages/registrations.jsp?error=usernameExits");
            return;
        } 
     
		UserModel userModel = new UserModel(userName, firstName, lastName, dob, gender, email, phoneNumber, address, password);
		
		int result = dbController.registerUser(userModel);
		System.out.println(result);		
		if (result > 0) {
			response.sendRedirect(request.getContextPath() + "/view/Pages/login.jsp?success=RegistrationSuccessful");	// TODO need update
		}else {
			//handleError(response, "Registration failed. Please try again.");
			response.sendRedirect(request.getContextPath() + "/view/Pages/registrations.jsp?error=RegistrationFailed");
			System.out.println("Error found");
		}
	
		doGet(request, response);
}
	private boolean isValidName(String name) {
		// TODO Auto-generated method stub
        return !name.matches(".*\\d.*") && !name.matches(".*[!@#$%^&*()_+\\-=\\[\\]{};':\"\\\\|,.<>\\/?].*");
	}
	
	
	private boolean isValidUsername(String username) {
        // Implement username validation logic
        return username.length() > 5 && !username.matches(".*[!@#$%^&*()_+\\-=\\[\\]{};':\"\\\\|,.<>\\/?].*");
    }

	
	

}

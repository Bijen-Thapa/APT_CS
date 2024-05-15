package com.itDokan.controllers;

import java.io.IOException;
import java.sql.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itDokan.controllers.database.DatabaseController;
import com.itDokan.models.UserModel;

import com.itDokan.rest.*;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	DatabaseController dbController = new DatabaseController();

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession(false);
		try {
		String userName = request.getParameter("userName");
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String stringDob = request.getParameter("dob");
		Date dob = Date.valueOf(stringDob);
		String gender = request.getParameter("gender");
		String email = request.getParameter("email");
		String phoneNumber = request.getParameter("phoneNumber");
		String address = request.getParameter("address");
		String password = request.getParameter("password");
		String repassword = request.getParameter("repassword");

		// Name format validation
		if (!isValidName(firstName) || !isValidName(lastName)) {
			// Redirect to the registration page with an error message
			session.setAttribute("error",
					"Invalid name format. Names should not contain numbers or special characters.");

			response.sendRedirect(request.getContextPath() + "/view/Pages/registrations.jsp");
			return;
		}

		if (password.length() < 6) {
			session.setAttribute("error", "Password should contain at least 6 characters.");
			response.sendRedirect(request.getContextPath() + "/view/Pages/registrations.jsp");

			return;
		}

		if (!password.equals(repassword)) {
			session.setAttribute("error", "Passwords do not match.");
			response.sendRedirect(request.getContextPath() + "/view/Pages/registrations.jsp");

			return;
		}
		// Other validations as needed

		System.out.println(!isValidUsername(userName));
		if (isValidUsername(userName)) {
			session.setAttribute("error", "Username should conatain more than 5 charcater");
			response.sendRedirect(request.getContextPath() + "/view/Pages/registrations.jsp");
			return;
		}

		UserModel userModel = new UserModel(userName, firstName, lastName, dob, gender, email, phoneNumber, address,
				password);

		int result = dbController.registerUser(userModel);
		if (result == 1) {
			response.sendRedirect(request.getContextPath() + "/view/Pages/login.jsp");
		}else if (result == 0) {
			session.setAttribute("error", StringUtil.REGISTER_ERROR_MESSAGE);
			response.sendRedirect(request.getContextPath() + "/view/Pages/registrations.jsp");
		}else {
			session.setAttribute("error", StringUtil.SERVER_ERROR_MESSAGE);
			response.sendRedirect(request.getContextPath() + "/view/Pages/registrations.jsp");
			return;
		}
	 } catch (Exception ex) {
         session.setAttribute("error", "An unexpected error occurred.");
         response.sendRedirect(request.getContextPath() + "/view/Pages/registrations.jsp");
         return;
	 }
	}

	private boolean isValidName(String name) {
		return !name.matches(".*\\d.*") && !name.matches(".*[!@#$%^&*()_+\\-=\\[\\]{};':\"\\\\|,.<>\\/?].*");
	}

	private boolean isValidUsername(String username) {
		// Implement username validation logic
		return username.length() > 5 && !username.matches(".*[!@#$%^&*()_+\\-=\\[\\]{};':\"\\\\|,.<>\\/?].*");
	}

}

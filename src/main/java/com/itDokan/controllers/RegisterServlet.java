package com.itDokan.controllers;

import java.io.IOException;
import java.sql.Date;
import java.time.LocalDate;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO

		HttpSession session = request.getSession();
		session.setAttribute("error", null);

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
//			handleError(response, "Invalid name format. Names should not contain numbers or special characters.");
			session.setAttribute("error",
					"Invalid name format. Names should not contain numbers or special characters.");

//			request.setAttribute("error",
//					"Invalid name format. Names should not contain numbers or special characters.");
			response.sendRedirect(request.getContextPath() + "/view/Pages/registrations.jsp");
			return;
		}

		if (password.length() < 6) {
//			handleError(response, "Password should contain at least 6 characters.");
//			request.setAttribute("error", "Password should contain at least 6 characters.");
			session.setAttribute("error", "Password should contain at least 6 characters.");
			response.sendRedirect(request.getContextPath() + "/view/Pages/registrations.jsp");

			return;
		}

		if (!password.equals(repassword)) {
//			handleError(response, "Passwords do not match.");
			session.setAttribute("error", "Passwords do not match.");
			response.sendRedirect(request.getContextPath() + "/view/Pages/registrations.jsp");

			return;
		}
		// Other validations as needed

		if (isValidUsername(userName)) {
//			handleError(response, "Username should conatain more than 5 charcater");
			session.setAttribute("error", "Username should conatain more than 5 charcater");
			response.sendRedirect(request.getContextPath() + "/view/Pages/registrations.jsp");

		}

		UserModel userModel = new UserModel(userName, firstName, lastName, dob, gender, email, phoneNumber, address,
				password);

//		int result = dbController.registerUser(userModel);
//		System.out.println(result);		
//		if (result > 0) {
//			response.sendRedirect(request.getContextPath() + "/Pages/login.jsp");	// TODO need update
//		}	

		int result = dbController.registerUser(userModel);
		if (result == 1) {
//			request.setAttribute(StringUtil.SUCCESS_MESSAGE, StringUtil.SUCCESS_REGISTER_MESSAGE);
			response.sendRedirect(request.getContextPath() + "/view/Pages/login.jsp");
		}

		else if (result == 0) {
			request.setAttribute(StringUtil.ERROR_MESSAGE, StringUtil.REGISTER_ERROR_MESSAGE);
			response.sendRedirect(request.getContextPath() + "/view/Pages/registrations.jsp");
		}

		else {
			request.setAttribute(StringUtil.ERROR_MESSAGE, StringUtil.SERVER_ERROR_MESSAGE);
			response.sendRedirect(request.getContextPath() + "/view/Pages/registrations.jsp");

		}
	}

	private void handleError(HttpServletResponse response, String errorMessage) throws IOException {
		response.setContentType("text/html");
		response.getWriter().println("<h2>Error:</h2>");
		response.getWriter().println("<p>" + errorMessage + "</p>");
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

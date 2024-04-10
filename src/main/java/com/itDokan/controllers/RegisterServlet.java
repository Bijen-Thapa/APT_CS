package com.itDokan.controllers;

import java.io.IOException;
import java.time.LocalDate;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itDokan.models.UserModel;

import controller.database.DatabaseController;

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
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String stringDob = request.getParameter("dob");
		LocalDate dob = LocalDate.parse(stringDob);
		String gender= request.getParameter("gender");		
		String email = request.getParameter("email");
		String phoneNumber = request.getParameter("phoneNumber");
		String address = request.getParameter("address");
		String userName = request.getParameter("userName");
		String password = request.getParameter("password");
		
		UserModel newUser = new UserModel(userName, firstName, lastName, gender, address, email, phoneNumber, password, dob);
		
		int result = dbController.registerUser(newUser);
				
		if (result > 0) {
			response.sendRedirect(request.getContextPath() + "/login.jsp");	// TODO need update
		}		
		
		doGet(request, response);
	}

}

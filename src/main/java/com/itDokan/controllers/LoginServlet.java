package com.itDokan.controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itDokan.controllers.database.DatabaseController;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet(asyncSupported = true, urlPatterns = { "/LoginServlet"})
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
	DatabaseController dbController = new DatabaseController();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String userName = request.getParameter("userName");
		String password = request.getParameter("password");
		
		
		System.out.println("USername: " + userName);
		System.out.println("password: " + password);
		//int loginResult = dbController.getUserLoginInfo(userName, password);
		int loginResult = dbController.getUserLoginInfo(userName, password);
		if (loginResult == 1) {
			response.sendRedirect(request.getContextPath() + "/Pages/Header.jsp");
		} else if (loginResult == 0) {
			
		}else {
			
		}
		
		
		
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		// TODO: 	user login and redirect them to respective pages according to role
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

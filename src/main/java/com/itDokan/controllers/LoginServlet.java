package com.itDokan.controllers;

import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Timer;
import java.util.TimerTask;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itDokan.controllers.database.DatabaseController;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet(asyncSupported = true, urlPatterns = { "/LoginServlet" })
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
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

// TODO Auto-generated method stub
		String userName = request.getParameter("userName");
		String password = request.getParameter("password");

		System.out.println("Username: " + userName);
		System.out.println("password: " + password);

		String decryptedPassword = decryptPassword(password);
		int loginResult = dbController.getUserLoginInfo(userName, decryptedPassword);
		if (loginResult == 1) {
			HttpSession userSession = request.getSession();
			userSession.setAttribute("username", userName);
			userSession.setMaxInactiveInterval(3 * 60);
			response.sendRedirect(request.getContextPath() + "/view/Pages/Header.jsp");

		} else if (loginResult == 0) {
			response.sendRedirect(request.getContextPath() + "/view/Pages/login.jsp?error=1");
			System.out.println("Error found");
		} else {

		}
		response.getWriter().append("Served at: ").append(request.getContextPath());

// TODO: user login and redirect them to respective pages according to role

	}

	private String decryptPassword(String password) {
// TODO Auto-generated method stub
		try {
			MessageDigest decrypt = MessageDigest.getInstance("SHA-256");
			byte[] decryption = decrypt.digest(password.getBytes());

			StringBuilder newString = new StringBuilder();
			for (byte b : decryption) {
				String hex = Integer.toHexString(0xff & b);
				if (hex.length() == 1)
					newString.append('0');
				newString.append(hex);
			}
			return newString.toString();

		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
			return null;
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
// TODO Auto-generated method stub
		doGet(request, response);
	}

}
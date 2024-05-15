package com.itDokan.controllers;

import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itDokan.controllers.database.DatabaseController;

@WebServlet(asyncSupported = true, urlPatterns = { "/LoginServlet" })
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	DatabaseController dbController = new DatabaseController();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String userName = request.getParameter("userName");
		String password = request.getParameter("password");

		int loginResult = dbController.getUserLoginInfo(userName, password);
		System.out.println("logRes: " + loginResult);

		HttpSession session = request.getSession(false);

		if (loginResult == 1) {
			session.setAttribute("userName", userName);
			session.setAttribute("userModel", new userObject().creaateUserModel(userName));
			session.setMaxInactiveInterval(3 * 60); // 60 seconds times 3

			request.setAttribute("status", "Sucess");

			response.sendRedirect(request.getContextPath() + "/view/Pages/index.jsp");

		} else if (loginResult == 11) {
			session.setAttribute("isAdmin", true);
			session.setAttribute("activeTab", "dashboard");
			response.sendRedirect(request.getContextPath() + "/view/Pages/admin/admin_index.jsp");

		} else {
			session.setAttribute("error", "invalid username or password");
			request.setAttribute("status", "Failed");
			response.sendRedirect(request.getContextPath() + "/view/Pages/login.jsp?error=1");
		}
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	private String decryptPassword(String password) {
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

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
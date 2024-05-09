package com.itDokan.controllers;

import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Timer;
import java.util.TimerTask;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itDokan.controllers.database.DatabaseController;
import com.itDokan.models.UserModel;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet(asyncSupported = true, urlPatterns = { "/LoginServlet" })
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	DatabaseController dbController = new DatabaseController();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String userName = request.getParameter("userName");
		String password = request.getParameter("password");

		System.out.println("Username: " + userName);
		System.out.println("password: " + password);

		int loginResult = dbController.getUserLoginInfo(userName, password);
		System.out.println("logRes: " + loginResult);

//		RequestDispatcher dispatch = null;
		HttpSession session = request.getSession();

		if (loginResult == 1) {
			UserModel userObj = new userObject().creaateUserModel(userName);
			session.setAttribute("username", userName);
//			session.setAttribute("userID", (String.valueOf(userObj.getId())));
			session.setAttribute("userModel", new userObject().creaateUserModel(userName));
			session.setMaxInactiveInterval(10); // 60 seconds times 3
//			response.sendRedirect(request.getContextPath() + "/view/Pages/Header.jsp");

//			response.addCookie(null)
//			System.out.println("servlet "+userSession.getClass());
//			Cookie cok = new Cookie("accountDetail", cc.getUserLoginInfo(userName, decryptedPassword));
			request.setAttribute("status", "Sucess");

			response.sendRedirect(request.getContextPath() + "/view/Pages/product.jsp");
//			dispatch = request.getRequestDispatcher("index.jsp");

		} else if (loginResult == 11) {
			session.setAttribute("isAdmin", true);
			session.setAttribute("activeTab", "dashboard");
			response.sendRedirect(request.getContextPath() + "/view/Pages/admin/admin_product.jsp");
//			dispatch = request.getRequestDispatcher("admin/admin_index.jsp");

		} else {
			session.setAttribute("error", "invalid username or password");
			request.setAttribute("status", "Failed");
			response.sendRedirect(request.getContextPath() + "/view/Pages/login.jsp?error=1");
			System.out.println("Error found");
//			dispatch = request.getRequestDispatcher("login.jsp");
		}
//		dispatch.forward(request, response);
		response.getWriter().append("Served at: ").append(request.getContextPath());

// TODO: user login and redirect them to respective pages according to role

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

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
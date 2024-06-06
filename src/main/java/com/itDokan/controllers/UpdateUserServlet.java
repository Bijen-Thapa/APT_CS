package com.itDokan.controllers;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itDokan.controllers.database.DatabaseController;
import com.itDokan.rest.StringUtil;

/**
 * Servlet implementation class UpdateUserServlet
 */
@WebServlet("/UpdateUserServlet")
public class UpdateUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateUserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("editButton");

		request.getSession(false).setAttribute("editUser", id);
		response.sendRedirect(request.getContextPath() + "/view/Pages/admin/editUser.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		DatabaseController dbCon = new DatabaseController();
		try (Connection con = dbCon.getConnection()) {
			PreparedStatement st = con.prepareStatement(StringUtil.DELETE_USER);
			st.setString(1, String.valueOf(session.getAttribute("doDeleteUser")));
			int res = st.executeUpdate();
			if (res > 0) {
				session.setAttribute("deleted", "User deleted successfully!");
				response.sendRedirect(request.getContextPath() + "/view/Pages/admin/admin_user.jsp");
			} else {
				session.setAttribute("deleted", "User was not deleted");
				response.sendRedirect(request.getContextPath() + "/view/Pages/admin/admin_user.jsp");

			}

		} catch (Exception e) {
			// TODO: handle exception
		}
	}

}

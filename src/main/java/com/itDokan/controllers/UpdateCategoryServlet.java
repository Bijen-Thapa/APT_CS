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
 * Servlet implementation class UpdateCategoryServlet
 */
@WebServlet("/UpdateCategoryServlet")
public class UpdateCategoryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UpdateCategoryServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("editButton");

		request.getSession(false).setAttribute("editProductCat", id);
		response.sendRedirect(request.getContextPath() + "/view/Pages/admin/editProductCat.jsp");

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		DatabaseController dbCon = new DatabaseController();
		try (Connection con = dbCon.getConnection()) {
			PreparedStatement st = con.prepareStatement(StringUtil.DELETE_PRODUCT_CAT);
			st.setString(1, String.valueOf(session.getAttribute("doDeleteProductCat")));
			int res = st.executeUpdate();
			if (res > 0) {
				session.setAttribute("deleted", "Product category deleted successfully!");
				response.sendRedirect(request.getContextPath() + "/view/Pages/admin/product_category.jsp");
			} else {
				session.setAttribute("deleted", "Product category not deleted");
				response.sendRedirect(request.getContextPath() + "/view/Pages/admin/product_category.jsp");

			}

		} catch (Exception e) {
			// TODO: handle exception
		}

	}

}

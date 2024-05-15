package com.itDokan.controllers;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itDokan.controllers.database.DatabaseController;
import com.itDokan.models.ProductModel;

/**
 * Servlet implementation class updateProductDetail
 */
@WebServlet("/updateProductDetail")
public class updateProductDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public updateProductDetailServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		DatabaseController dbCon = new DatabaseController();
		HttpSession session = request.getSession(false);
		try (Connection con = dbCon.getConnection()) {
			ProductModel newProduct = new ProductModel(request.getParameter("name"),
					request.getParameter("description"), "test_model", "test_brand", request.getParameter("img"),
					Integer.parseInt(request.getParameter("qty")), Integer.parseInt(request.getParameter("price")),
					Integer.parseInt(request.getParameter("category")));

			int result = dbCon.updateProduct(newProduct);

			if (result == -1) {
				System.out.println("-1");
				session.setAttribute("updateProductStatus", "failed to update product");
				response.sendRedirect(request.getContextPath() + "/view/Pages/admin/admin_product.jsp");

			} else if (result == 1) {
				System.out.println("success");
				session.setAttribute("updateProductStatus", "successfully updated the product");
				response.sendRedirect(request.getContextPath() + "/view/Pages/admin/admin_product.jsp");

			} else {
				System.out.println("0");
			}

		} catch (Exception e) {
			// TODO: handle exception
		}

	}

}

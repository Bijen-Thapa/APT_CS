package com.itDokan.controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itDokan.controllers.database.DatabaseController;
import com.itDokan.models.productCategoryModel;

/**
 * Servlet implementation class AddProductCategory
 */
@WebServlet("/AddProductCategoryServlet")
public class AddProductCategoryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddProductCategoryServlet() {
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
		// TODO Auto-generated method stub
//		DatabaseController dbCon = new DatabaseController();
//		String query = "INSERT INTO product_category (name, description) VALUES (?, ?);";
//		
//		try (Connection con = dbCon.getConnection();){
//			PreparedStatement st = con.prepareStatement(query);
//			
//			
//		} catch (Exception e) {
//			// TODO: handle exception
//		}
		DatabaseController dbCon = new DatabaseController();
		productCategoryModel newCategory = new productCategoryModel(request.getParameter("name"), request.getParameter("description"));
		int result = dbCon.addProductCategry(newCategory);
		
		if (result == 1) {
			System.out.println(request.getContextPath());
			response.sendRedirect(request.getContextPath() + "/view/Pages/admin/product_category.jsp");
		} else {

		}
		
	}
	
	public void name() {
		
	}

}

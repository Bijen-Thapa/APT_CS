package com.itDokan.controllers;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itDokan.controllers.database.DatabaseController;
import com.itDokan.rest.StringUtil;

/**
 * Servlet implementation class UpdateProductServler
 */
@WebServlet("/UpdateProductServlet")
public class UpdateProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateProductServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		doGet(request, response);
		System.out.println("post inia");
		System.out.println(request.getAttribute("prod_id"));
		
	}
	
	
	
	@Override
	protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doDelete(req, resp);
		System.out.println("dodel init");
		DatabaseController dbCon = new DatabaseController();
		try (Connection con = dbCon.getConnection()){
			PreparedStatement st = con.prepareStatement(StringUtil.DELET_PRODUCT);
			st.setString(1, (String) req.getAttribute("id"));
			int res = st.executeUpdate();
			if (res<0) {
				System.out.println("del sucss");
			} else {
				System.out.println("del not sucss");
				
			} 

		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	
	protected void dodelProduct(HttpServletRequest req, HttpServletResponse resp) {
		System.out.println("delProd ininniit");
	}

}

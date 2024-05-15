package com.itDokan.controllers;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itDokan.controllers.database.DatabaseController;
import com.itDokan.models.ProductModel;
import com.itDokan.rest.StringUtil;

/**
 * Servlet implementation class UpdateProductServler
 */
@WebServlet("/UpdateProductServlet")
public class UpdateProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Override
		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		try (Connection con = dbCon.getConnection()){
//		PreparedStatement st = con.prepareStatement(StringUtil.GET_PRODUCT_BY_ID);
//		st.setString(1, id);
//		ResultSet res = st.executeQuery();
		
//		ProductModel prod = new ProductModel(res.getString("name"), res.getString("description"), res.getString("model"), res.getString("brand"), res.getString("img"), res.getInt("id"), res.getInt("qty"), res.getInt("price"), res.getInt("category"), res.getDate("addedDate"));
		
		String id = request.getParameter("editButton");
		
		request.getSession().setAttribute("editProduct", id);
		request.setAttribute("editProd", id);
		response.sendRedirect(request.getContextPath()+ "/view/Pages/admin/editProduct.jsp");
		
		
//	} catch (Exception e) {
//		// TODO: handle exception
//	}
		
			
		
		
		
		
		}
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
//		try (Connection con = dbCon.getConnection()){
//			PreparedStatement st = con.prepareStatement(StringUtil.GET_PRODUCT_BY_ID);
//			st.setString(1, id);
//			ResultSet res = st.executeQuery();
//			
//			ProductModel prod = new ProductModel(res.getString("name"), res.getString("description"), res.getString("model"), res.getString("brand"), res.getString("img"), res.getInt("id"), res.getInt("qty"), res.getInt("price"), res.getInt("category"), res.getDate("addedDate"));
//			
//			
//			
//		} catch (Exception e) {
//			// TODO: handle exception
//		}
		
		
//			System.out.println("uuppd");
//			DatabaseController dbCon = new DatabaseController();
//			try (Connection con = dbCon.getConnection()){
//				
//				PreparedStatement st = con.prepareStatement(StringUtil.UPDATE_PRODUCT);
//				
//				st.setString(1, request.getParameter("name"));
//				st.setString(2, request.getParameter("description"));
//				st.setString(3, request.getParameter("qty"));
//				st.setString(4, request.getParameter("price"));
//				st.setString(5, request.getParameter("category"));
//				st.setString(6, request.getParameter("product_id"));
//				
//				int res= st.executeUpdate();
//				System.out.println("resss"+res);
//				
//				if (res>0) {
//					
//					request.getSession().setAttribute("productUpdated", true);
//					response.sendRedirect(request.getContextPath() + "/view/Pages/admin/admin_product.jsp");
//					
//				}else {
//					request.getSession().setAttribute("productUpdated", false);
//					response.sendRedirect(request.getContextPath() + "/view/Pages/admin/editProduct.jsp");
//
//				}
//				
//			} catch (SQLException | ClassNotFoundException e) {
//				// TODO: handle exception
//			}
		
		
		HttpSession session = request.getSession(false);
		DatabaseController dbCon = new DatabaseController();
		try (Connection con = dbCon.getConnection()){
			PreparedStatement st = con.prepareStatement(StringUtil.DELET_PRODUCT);
			st.setString(1, String.valueOf(session.getAttribute("doDeleteProduct")));
			System.out.println(String.valueOf(session.getAttribute("doDeleteProduct")));
			int res = st.executeUpdate();
			if (res>0) {
				session.setAttribute("deleted", "Product deleted successfully!");
				response.sendRedirect(request.getContextPath() + "/view/Pages/admin/admin_product.jsp");
			} else {
				session.setAttribute("deleted", "Product not deleted");
				response.sendRedirect(request.getContextPath() + "/view/Pages/admin/admin_product.jsp");
				
			} 

		} catch (Exception e) {
			// TODO: handle exception
		}
		
		

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

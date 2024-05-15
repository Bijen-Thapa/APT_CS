package com.itDokan.controllers;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.http.HttpResponse;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.itDokan.controllers.database.DatabaseController;
import com.itDokan.models.ProductModel;

@WebServlet("/AddProductServlet")
@MultipartConfig
public class AddProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AddProductServlet() {
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
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String imgPath = addImage(request);
		addProduct(request, response, imgPath);		
		
	}

	private void addProduct(HttpServletRequest request, HttpServletResponse response, String imgPath) {
		DatabaseController dbCon = new DatabaseController();
		HttpSession session = request.getSession();
		session.setAttribute("addProductStatus", null);
		try (Connection con = dbCon.getConnection()) {
			ProductModel newProduct = new ProductModel(request.getParameter("name"),
					request.getParameter("description"), "test_model", "test_brand", imgPath,
					Integer.parseInt(request.getParameter("qty")), Integer.parseInt(request.getParameter("price")),
					Integer.parseInt(request.getParameter("category")));

			int result = dbCon.addProduct(newProduct);

			if (result == -1) {
				System.out.println("-1");				
				session.setAttribute("addProductStatus", "failed");
				response.sendRedirect(request.getContextPath() + "/view/Pages/admin/admin_product.jsp");

			} else if (result == 1) {
				System.out.println("success");
				session.setAttribute("addProductStatus", "success");				
				response.sendRedirect(request.getContextPath() + "/view/Pages/admin/admin_product.jsp");

			} else {
				System.out.println("0");
			}

		} catch (Exception e) {
			System.out.println(e);
		}
	}
	
	private String addImage(HttpServletRequest request) throws IOException, ServletException {
		System.out.println(" beff lloo");
		Part filePart = request.getPart("img");
		String filename = filePart.getSubmittedFileName();
		String savePath = "/Users/ASUS/eclipse-workspace/APT_CS/src/main/webapp/view/images/" + File.separator + filename;
		String databasePath = "images" + File.separator + filename;
		InputStream fileContent = filePart.getInputStream();
		FileOutputStream outputStream = new FileOutputStream(savePath);
		byte[] buffer = new byte[10241];
		int bytesRead;
		
		while ((bytesRead = fileContent.read(buffer)) != -1) {
			outputStream.write(buffer, 0, bytesRead);
		}
		System.out.println("after lloo");
		

		fileContent.close();
		outputStream.close();
		
		return databasePath;
	}
}

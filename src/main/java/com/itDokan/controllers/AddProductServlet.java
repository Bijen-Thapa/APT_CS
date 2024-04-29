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
import javax.servlet.http.Part;

import com.itDokan.controllers.database.DatabaseController;
import com.itDokan.models.ProductModel;

/**
 * Servlet implementation class AdminServlet
 */
//@WebServlet("/AddProductServlet")
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
		// TODO Auto-generated method stub

//			String query = "INSERT INTO product (id, name, description, model, qty, brand, product_category, price, image, added_date) VALUES (NULL, '?', '?', '?', '?', '?', '?', '?', '?', NULL);";
//			PreparedStatement st = con.prepareStatement(query);

//			st.setString(1, request.getParameter("name"));
//			st.setString(2, request.getParameter("description"));
//			st.setString(3, "test_model");
//			st.setString(4, request.getParameter("qty"));
//			st.setString(5, "test_brand");
//			st.setString(6, request.getParameter("category"));
//			st.setString(7, request.getParameter("price"));
//			st.setString(8, "test_img");

//		System.out.println(image);
//		doGet(request, response);
		
//		uploadImageServlet im = new uploadImageServlet();
//		Strings imgPath = im.doPost(request);
		String imgPath = addImage(request);
		addProduct(request, response, imgPath);		
		
	}

	private void addProduct(HttpServletRequest request, HttpServletResponse response, String imgPath) {
		DatabaseController dbCon = new DatabaseController();
		try (Connection con = dbCon.getConnection()) {
			ProductModel newProduct = new ProductModel(request.getParameter("name"),
					request.getParameter("description"), "test_model", "test_brand", imgPath,
					Integer.parseInt(request.getParameter("qty")), Integer.parseInt(request.getParameter("price")),
					Integer.parseInt(request.getParameter("category")));

			int result = dbCon.addProduct(newProduct);

			if (result == -1) {
				System.out.println("-1");
			} else if (result == 1) {
				System.out.println("success");
				response.sendRedirect(request.getContextPath() + "/view/Pages/admin/admin_product.jsp");

			} else {
				System.out.println("0");
			}

		} catch (Exception e) {
			// TODO: handle exception
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
	
//	  private String addImage(HttpServletRequest request) throws IOException, ServletException {
//	        Part filePart = request.getPart("img");
//	        String filename = filePart.getSubmittedFileName();
//
//	        // Derive savePath from the web application's context path
//	        ServletContext context = getServletContext();
//	        String imagesDirectory = context.getRealPath("/images");
//	        
//	        // Ensure the directory exists
//	        File imagesDir = new File(imagesDirectory);
//	        if (!imagesDir.exists()) {
//	            imagesDir.mkdirs();
//	        }
//
//	        String savePath = imagesDirectory + File.separator + filename;
//	        String databasePath = "images" + File.separator + filename;
//
//	        try (InputStream fileContent = filePart.getInputStream();
//	             FileOutputStream outputStream = new FileOutputStream(savePath)) {
//
//	            byte[] buffer = new byte[4096];  // Standard buffer size
//	            int bytesRead;
//
//	            while ((bytesRead = fileContent.read(buffer)) != -1) {
//	                outputStream.write(buffer, 0, bytesRead);
//	            }
//
//	        } catch (IOException e) {
//	            throw new ServletException("File upload failed", e);
//	        }
//
//	        return databasePath;
//	    }
	

}

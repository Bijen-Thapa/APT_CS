package com.itDokan.controllers;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.itDokan.controllers.database.DatabaseController;

/**
 * Servlet implementation class uploadImageServlet
 */
@WebServlet("/uploadImageServlet")
@MultipartConfig
public class uploadImageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public uploadImageServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGwet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
//		String productiane a request. getParaneter("productNane")! int productPrice = Integer parseint (request«getParaneter("productPrice")):
//			DatabaseController de = new DatabaseController();
//			Part filePart = request getPart("f1le2"):
//			String filenane = 11lePart-getSubaittedF11cHape():
//			String savePath = "/Users/sandipadhkar1/eclpse-workspace/Econ/sre/main/webapp/1mages/* • File.separeter • 1
//			String databasePath = "inages" + File, separator + 11lenase;
//			InputStream fileContent = 11lePart-getInputstrean():
//			FileOutputStrean outputStream - new FileOutputStream (savePath):
//			bytell buffer = new byte (1024);
//			int bytesRead:
//			while ((bytesRead = fileContent. read (buffer)) (= -1) ‹ outputStrean, urite(buffer, 0, byteskead)i
//			｝
//			de. saveProduct (new SaveProduct (productiane, productPrice, databasePath) i filecontent.close:
//			outputstream. closeli

		
		
//		String productName = request.getParameter("productName");
//		int productPrice = Integer.parseInt(request.getParameter("productPrice"));
//		DatabaseController dc = new DatabaseController();
//		Part filePart = request.getPart("f1le2");
//		String filename = filePart.getSubmittedFileName();
//		String savePath = "/Users/ASUS/eclipse-workspace/APT-CS/src/main/webapp/inages/" + File.separator + 1;
//		String databasePath = "images" + File.separator + filename;
//		InputStream fileContent = filePart.getInputStream();
//		FileOutputStream outputStream = new FileOutputStream(savePath);
//		byte[] buffer = new byte[10241];
//		int bytesRead;
//		while ((bytesRead = fileContent.read(buffer)) != -1) {
//			outputStream.write(buffer, 0, bytesRead);
//		}
//		dc.saveProduct(new SaveProduct(productName, productPrice, databasePath));
//		fileContent.close();
//		outputStream.close();

		
		
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected String doPost(HttpServletRequest request)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
//		doGet(request, response);
		
		Part filePart = request.getPart("img");
		String filename = filePart.getSubmittedFileName();
		String savePath = "/Users/ASUS/eclipse-workspace/APT_CS/src/main/webapp/images/" + File.separator + filename;
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

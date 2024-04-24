package com.itDokan.rest;

import java.beans.Statement;
import java.io.FileOutputStream;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;

import com.itDokan.controllers.database.DatabaseController;

public class ImageDAO {

//	Connection con = DriverManager.getConnection(null);
	DatabaseController dbCon = new DatabaseController();
//	
//	public ImageDAO() {
//		// TODO Auto-generated constructor stub
//		Statement stmt = con.createStatement();
//		ResultSet rs = stmt.executeQuery("select * from SampleTable");
//		int i = 1;
//		System.out.println("Contents of the table are: ");
//		while(rs.next()) {
//			System.out.println(rs.getString("Name"));
//			Blob blob = rs.getBlob("Image");
//			byte byteArray[] = blob.getBytes(1,(int)blob.length());
//			FileOutputStream outPutStream = new
//					FileOutputStream("../images/"+i+".jpg");
//			outPutStream.write(byteArray);
////			System.out.println("E:\images\blob_output"+i+".jpg");
//			System.out.println();
//			i++;
//		}
//	}

}

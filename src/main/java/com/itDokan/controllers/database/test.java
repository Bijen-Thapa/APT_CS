package com.itDokan.controllers.database;
  

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class test {

	public Connection con() throws SQLException, ClassNotFoundException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		String url = "jdbc:mysql://localhost:3306/it_dokan";
		String user = "root";
		String password = "";
			
		return DriverManager.getConnection(url, user, password);
	}

	
	
	public static void main(String[] args) {
		
	}
}

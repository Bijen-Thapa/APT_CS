package com.itDokan.controllers.database;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.itDokan.models.ProductModel;
import com.itDokan.models.UserModel;
import com.itDokan.rest.StringUtil;

public class DatabaseController {

	public DatabaseController() {
		// TODO Auto-generated constructor stub
	}

	public Connection getConnection() throws ClassNotFoundException, SQLException {
		//Class.forName("com.mysql.jdbc.Driver");
		Class.forName("com.mysql.jdbc.Driver");

		String url = "jdbc:mysql://localhost:3306/it_dokan";
		String user = "root";
		String pass = "";

		return DriverManager.getConnection(url, user, pass);
	}
	
	public int registerUser(UserModel userModel) {
		try (Connection con = getConnection()){
			PreparedStatement st = con.prepareStatement(StringUtil.INSERT_USER);
			
			st.setString(1, userModel.getUserName());
			st.setString(2, userModel.getFirstName());
			st.setString(3, userModel.getLastName());
			st.setDate(4, Date.valueOf(userModel.getDob()));
			st.setString(5, userModel.getGender());
			st.setString(6, userModel.getEmail());
			st.setString(7, userModel.getPhoneNumber());
			st.setString(8, userModel.getAddress());
			st.setString(9, userModel.getPassword());
			
			int result = st.executeUpdate();
			return result > 0 ? 1 : 0;
			
		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
			return -1;
		}
	}
	
	public int addProduct (ProductModel productModel) {
		try (Connection con = getConnection()){
			PreparedStatement st = con.prepareStatement(StringUtil.INSERT_PRODUCT);
			
			st.setString(1, productModel.getName());
			st.setBlob(2, productModel.getImage());
			st.setString(3, productModel.getDescription());
			st.setFloat(4, productModel.getPrice());
			
			int result = st.executeUpdate();
			return result > 0 ? 1 : 0;
			
		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
			return -1;
		}
	}
}

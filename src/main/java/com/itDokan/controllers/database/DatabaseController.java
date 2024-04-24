package com.itDokan.controllers.database;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
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
		Class.forName("com.mysql.cj.jdbc.Driver");

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
			st.setString(4, userModel.getGender());
			st.setDate(5, Date.valueOf(userModel.getDob()));
			st.setString(6, userModel.getPhoneNumber());
			st.setString(7, userModel.getEmail());
			st.setString(8, userModel.getAddress());
			st.setString(9, userModel.getPassword());
			
			int result = st.executeUpdate();
			return result > 0 ? 1 : 0;
			
		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
			return -1;
		}
	}
	
//<<<<<<< Updated upstream
	public int addProduct (ProductModel productModel) {
		try (Connection con = getConnection()){
			PreparedStatement st = con.prepareStatement(StringUtil.INSERT_PRODUCT);
			
			st.setString(1, productModel.getName());
//			st.setBlob(2, productModel.getImage());
			st.setString(3, productModel.getDescription());
			st.setFloat(4, productModel.getPrice());
			
			int result = st.executeUpdate();
			return result > 0 ? 1 : 0;
			
		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
			return -1;
		}
	}
//=======
	
//	public int getUserLoginInfo(String userName, String password) {
//		// TODO Auto-generated method stub
//		
//		try (Connection con = getConnection()) {
//			PreparedStatement st = con.prepareStatement(StringUtil.GET_LOGIN_USER_INFO);
//			st.setString(1, userName);
//			st.setString(2, password);
//			
//			ResultSet rs = st.executeQuery();
//			
//			if (rs.next()) {
//				return 1;
//			} else {
//				return 0;
//			}
//			
//		} catch(SQLException | ClassNotFoundException ex) {
//			ex.printStackTrace();
//		}}
//>>>>>>> Stashed changes
	
	
}

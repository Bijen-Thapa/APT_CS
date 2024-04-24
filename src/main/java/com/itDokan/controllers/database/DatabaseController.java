package com.itDokan.controllers.database;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
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
//	
private String encryptPassword(String password) {
		// TODO Auto-generated method stub
	try {
		MessageDigest encrypt = MessageDigest.getInstance("SHA-256");
		byte[] encryption = encrypt.digest(password.getBytes());
		
		StringBuilder hexString = new StringBuilder();
        for (byte b : encryption) {
            String hex = Integer.toHexString(0xff & b);
            if (hex.length() == 1) hexString.append('0');
            hexString.append(hex);
        }
        return hexString.toString();

	}catch(NoSuchAlgorithmException e) {
		e.printStackTrace();
		return null;
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
	
	public int getUserLoginInfo(String userName, String hashedPassword) {
		// TODO Auto-generated method stub
		
		try (Connection con = getConnection()) {
			PreparedStatement st = con.prepareStatement(StringUtil.GET_LOGIN_USER_INFO);
			st.setString(1, userName);
			st.setString(2, hashedPassword);
			
			ResultSet rs = st.executeQuery();
			
			if (rs.next()) {
				return 1;
			} else {
				return 0;
			}
			
		} catch(SQLException | ClassNotFoundException ex) {
			ex.printStackTrace();
			return -1;
		}
		}

	public boolean isUsernameExists(String userName) {
        try (Connection con = getConnection()){
            PreparedStatement checkUsernameSt = con.prepareStatement(StringUtil.GET_USERNAME);
            checkUsernameSt.setString(1, userName);;
            ResultSet checkUsernameRs = checkUsernameSt.executeQuery();
            if (checkUsernameRs.next()) {
                int count = checkUsernameRs.getInt(1);
                return count > 0; // If count > 0, username exists
            }
        } catch (SQLException | ClassNotFoundException ex) {
            ex.printStackTrace();
        }
        return false; //username doesn't exist
    }

}

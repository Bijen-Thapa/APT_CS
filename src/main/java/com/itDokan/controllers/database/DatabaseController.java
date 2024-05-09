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
import com.itDokan.models.productCategoryModel;
import com.itDokan.rest.StringUtil;

public class DatabaseController {

	public DatabaseController() {
		// TODO Auto-generated constructor stub
	}

	public Connection getConnection() throws ClassNotFoundException, SQLException {
		// Class.forName("com.mysql.jdbc.Driver");
		Class.forName("com.mysql.cj.jdbc.Driver");

		String url = "jdbc:mysql://localhost:3306/it_dokan";
		String user = "root";
		String pass = "";

		return DriverManager.getConnection(url, user, pass);
	}

	public int registerUser(UserModel userModel) {
		try (Connection con = getConnection()) {
			PreparedStatement st = con.prepareStatement(StringUtil.INSERT_USER);

			st.setString(1, userModel.getUserName());
			st.setString(2, userModel.getFirstName());
			st.setString(3, userModel.getLastName());
			st.setString(4, userModel.getGender());
			st.setDate(5, (Date)userModel.getDob());
			st.setString(6, userModel.getPhoneNumber());
			st.setString(7, userModel.getEmail());
			st.setString(8, userModel.getAddress());

			String encryptedPassword = encryptPassword(userModel.getPassword());

			st.setString(9, encryptedPassword);

			int result = st.executeUpdate();
			return result > 0 ? 1 : 0;

		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
			return -1;
		}
	}

	public String encryptPassword(String password) {
		// TODO Auto-generated method stub
		try {
			MessageDigest encrypt = MessageDigest.getInstance("SHA-256");
			byte[] encryption = encrypt.digest(password.getBytes());

			StringBuilder hexString = new StringBuilder();
			for (byte b : encryption) {
				String hex = Integer.toHexString(0xff & b);
				if (hex.length() == 1)
					hexString.append('0');
				hexString.append(hex);
			}
			return hexString.toString();

		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
			return null;
		}
	}

//<<<<<<< Updated upstream
	public int addProduct(ProductModel productModel) {
		try (Connection con = getConnection()) {
			PreparedStatement st = con.prepareStatement(StringUtil.INSERT_PRODUCT);

			st.setString(1, productModel.getName());
			st.setString(2, productModel.getDescription());
			st.setString(3, productModel.getModel());
			st.setInt(4, productModel.getQty());
			st.setString(5, productModel.getBrand());
			st.setInt(6, productModel.getCategory());
			st.setInt(7, productModel.getPrice());
			st.setString(8, productModel.getImg());

			int result = st.executeUpdate();
			return result > 0 ? 1 : 0;

		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
			System.out.println(e);
			return -1;
		}

	}

	public int addProductCategry(productCategoryModel productCategory) {
		try (Connection con = getConnection()) {
			PreparedStatement st = con.prepareStatement(StringUtil.INSER_PRODUCT_CATEGORY);

			st.setString(1, productCategory.getName());
			st.setString(2, productCategory.getDescription());

			int result = st.executeUpdate();
			return result > 0 ? 1 : 0;

		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
			System.out.println(e);
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

	public int getUserLoginInfo(String userName, String Password) {
		// TODO Auto-generated method stub
		int ret = 97;
		try {
			Connection con = getConnection();
			PreparedStatement st = con.prepareStatement(StringUtil.GET_LOGIN_USER_INFO);
			st.setString(1, userName);
			String encryptedPassword = encryptPassword(Password);
			st.setString(2, encryptedPassword);
			
			System.out.println("brfff"
					+ encryptedPassword);
			
				ResultSet rs = st.executeQuery();
				int role = isAdmin(con, userName) ? 1 : 0;
//				System.out.println("rs commited");
//				System.out.println("isAdmin: " + isAdmin(con, userName));
//				System.out.println("role at getUser: " + role);
//				System.out.println("BOOLff " + (rs.next() && (role == 0)));
				System.out.println("rss"+ rs.getRow());
				if (rs.next()) {
					System.out.println("rs.next active xa");
					if (role == 0) {
						ret = 1;
					} else if (role == 1) {
						ret = 11;
					}
				} else {
					System.out.println("dbCon getUinfo rs.next not");
					ret = 0;
				}
			

		} catch (SQLException | ClassNotFoundException ex) {
			ex.printStackTrace();
			System.out.println(ex);
			ret = -1;
		}
		return ret;

	}

	public boolean isUsernameExists(String userName) {
		try (Connection con = getConnection()) {
			PreparedStatement checkUsernameSt = con.prepareStatement(StringUtil.GET_USERNAME);
			checkUsernameSt.setString(1, userName);
			;
			ResultSet checkUsernameRs = checkUsernameSt.executeQuery();
			if (checkUsernameRs.next()) {
				int count = checkUsernameRs.getInt(1);
				return count > 0; // If count > 0, username exists
			}
		} catch (SQLException | ClassNotFoundException ex) {
			ex.printStackTrace();
		}
		return false; // username doesn't exist
	}

	public boolean isAdmin(Connection con, String UserName) throws SQLException {
//		ResultSet result = null;
//		int result1 = 0;

//		System.out.println("userNam;" + UserName + "a");
		PreparedStatement st = con.prepareStatement(StringUtil.GET_ADMIN);
		st.setString(1, UserName);
		st.setString(2, "1");

		ResultSet result1 = st.executeQuery();
//		System.out.println("whl: " + result1);
//		System.out.println("whl ro: " + result1.getRow());
//		System.out.println("get ro: " + result1.getInt("role"));
		// exception: java.sql.SQLException: Before start of result set

//		System.out.println("role no: "+role);
		return result1.next();
//		return (result1 > 0) ? true : false;
//		return true;
	}

}

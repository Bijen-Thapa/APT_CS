package controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import model.ProductModel;
import util.StringUtils;

public class ProductController {
	public Connection getConnection() throws SQLException, ClassNotFoundException {
		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/test";
		String user = "root";
		String pass = "";
		return DriverManager.getConnection(url, user, pass);
	}
	
	public int addProduct(ProductModel productModel) {
		try(Connection con = getConnection()) {
			PreparedStatement st = con.prepareStatement(StringUtils.INSERT_PRODUCT);
			
			st.setInt(1, productModel.getProduct_id());
			st.setString(2, productModel.getName());
			st.setInt(3, productModel.getQuantity());
			st.setString(4, productModel.getImage());
			st.setString(5, productModel.getDescription());
			st.setInt(6, productModel.getPrice());
			
			int result = st.executeUpdate();
			return result > 0 ? 1 : 0;
		}
		 catch(SQLException | ClassNotFoundException ex){
			ex.printStackTrace();
			return 0;
		}
	}
}

package controller.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.itDokan.model.UserModel;

import rest.StringUtil;

public class DatabaseController {

	public DatabaseController() {
		// TODO Auto-generated constructor stub
	}

	public Connection getConnection() throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.jdbc.Driver");

		String url = "jdbc:mysql://localhost:3306/it_dokan";
		String user = "root";
		String pass = "";

		return DriverManager.getConnection(url, user, pass);
	}
	
	public int registerUser(UserModel userModel) {
		try (Connection con = getConnection()){
			PreparedStatement st = con.prepareStatement(StringUtil.INSERT_USER);
			
			st.setString(1, userModel.getFirstName());
			st.setString(1, userModel.getFirstName());
			st.setString(1, userModel.getFirstName());
			st.setString(1, userModel.getFirstName());
			st.setString(1, userModel.getFirstName());
			st.setString(1, userModel.getFirstName());
			st.setString(1, userModel.getFirstName());
			st.setString(1, userModel.getFirstName());
			
			int result = st.executeUpdate();
			return result > 0 ? 1 : 0;
			
		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
			return -1;
		}
	}
	
	
	
}

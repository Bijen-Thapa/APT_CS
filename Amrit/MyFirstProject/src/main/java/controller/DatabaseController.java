package controller;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.StudentModel;
import util.StringUtils;

public class DatabaseController {
	
	public Connection getConnection() throws SQLException, ClassNotFoundException {
		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/college_app";
		String user = "root";
		String pass = "";
		return DriverManager.getConnection(url, user, pass);
	}
	
	public int addStudent(StudentModel studentModel) {
		try(Connection con = getConnection()) {
			PreparedStatement checkUsernameSt = con.prepareStatement(StringUtils.GET_USERNAME);
			checkUsernameSt.setString(1, studentModel.getUsername());
			ResultSet checkUsernameRs = checkUsernameSt.executeQuery();
			checkUsernameRs.next();
			if (checkUsernameRs.getInt(1) > 0) {
				return -2;
			} 
			PreparedStatement checkPhoneSt = con.prepareStatement(StringUtils.GET_PHONE);
			checkPhoneSt.setString(1, studentModel.getPhoneNumber());
			ResultSet checkPhoneRs = checkPhoneSt.executeQuery();
			checkPhoneRs.next();
			if(checkPhoneRs.getInt(1) > 0) {
				return -4;
			}
			PreparedStatement checkEmailSt = con.prepareStatement(StringUtils.GET_EMAIL);
			checkEmailSt.setString(1, studentModel.getEmail());
			ResultSet ccheckEmailRs = checkPhoneSt.executeQuery();
			ccheckEmailRs.next();
			if(ccheckEmailRs.getInt(1) > 0) {
				return -3;
			}
			PreparedStatement st = con.prepareStatement(StringUtils.INSERT_STUDENT);
			
			st.setString(1, studentModel.getUsername());
			st.setString(2, studentModel.getFirstName());
			st.setString(3, studentModel.getLastName());
			st.setDate(4, Date.valueOf(studentModel.getDob()));
			st.setString(5, studentModel.getGender());
			st.setString(6, studentModel.getEmail());
			st.setString(7, studentModel.getPhoneNumber());
			st.setString(8, studentModel.getSubject());
			st.setString(9, studentModel.getPassword());
			
			int result = st.executeUpdate();
			return result > 0 ? 1 : 0;
		} catch (SQLException | ClassNotFoundException ex) {
			ex.printStackTrace();
			return -1;
		}
		
	}
	
	public int getStudentLoginInfo(String username, String password) {
		try(Connection con = getConnection()){
			PreparedStatement st = con.prepareStatement(StringUtils.GET_LOGIN_STUDENT_INFO);	
			st.setString(1, username);
			st.setString(2, password);
			ResultSet rs = st.executeQuery();
			
			if(rs.next()) {
				return 1;
			} else {
				return 0;
			}
		} catch(SQLException | ClassNotFoundException ex) {
			ex.printStackTrace();
			return -1;
		}
	}
	
	
}

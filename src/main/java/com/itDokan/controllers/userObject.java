package com.itDokan.controllers;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDate;

import com.itDokan.controllers.database.DatabaseController;
import com.itDokan.models.ProductModel;
import com.itDokan.models.UserModel;
import com.itDokan.rest.StringUtil;

public class userObject {

	public userObject() {
		// TODO Auto-generated constructor stub
	}

	public UserModel creaateUserModel(String userName) {
		DatabaseController dbCon = new DatabaseController();
		UserModel ret = null;
		try {
			Connection con = dbCon.getConnection();
			PreparedStatement st = con.prepareStatement(StringUtil.GET_USER_BY_USER_NAME);
			
			st.setString(1, userName);
			
			ResultSet res = st.executeQuery();
			ret =  new UserModel(res.getString("user_name"), res.getString("first_name"), res.getString("last_name"), res.getString("gender"), res.getString("address"), res.getString("email"),
					res.getString("phone_number"), res.getDate("dob"), res.getInt("id"));
		} catch (Exception e) {
			// TODO: handle exception
		}
		return ret;
	}
}

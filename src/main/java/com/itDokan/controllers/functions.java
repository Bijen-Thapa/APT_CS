package com.itDokan.controllers;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.itDokan.rest.StringUtil;

public class functions {

	public functions() {
		// TODO Auto-generated constructor stub
	}

	public int productCount(Connection con, ResultSet result, ResultSet orderList) throws SQLException {
		int qty = 0;
		PreparedStatement st1 = con.prepareStatement(StringUtil.GET_USER_NAME);
		// st1.setInt(1, result.getInt("user_id"));
		st1.setString(1, result.getString("user_id"));
		ResultSet name = st1.executeQuery();

		while (orderList.next()) {
			qty += (orderList.getString("order_id") == result.getString("id"))
					? Integer.parseInt(orderList.getString("qty"))
					: 0;
		}
		return qty;
	}

}

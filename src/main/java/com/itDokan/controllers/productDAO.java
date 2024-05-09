package com.itDokan.controllers;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.itDokan.controllers.database.DatabaseController;
import com.itDokan.models.ProductModel;
import com.itDokan.rest.StringUtil;

public class productDAO {

	public productDAO() {
		
	}
	
	public ProductModel getProductById(String id) throws SQLException, ClassNotFoundException {
		// TODO Auto-generated constructor stub
		DatabaseController dbCon = new DatabaseController();
		ProductModel prod = null ;
		
			Connection con = dbCon.getConnection();
			PreparedStatement st = con.prepareStatement(StringUtil.GET_PRODUCT_BY_ID);
			st.setString(1, id);
			ResultSet res = st.executeQuery();

			prod = new ProductModel(res.getString("name"), res.getString("description"), res.getString("model"),
					res.getString("brand"), res.getString("img"), res.getInt("id"), res.getInt("qty"),
					res.getInt("price"), res.getInt("category"), res.getDate("addedDate"));

			System.out.println("Pdas"+ prod.getImg());
		
//		return prod;
		return prod;
	}
	
	public ResultSet getResultSetProductById(String id) {
		// TODO Auto-generated constructor stub
		DatabaseController dbCon = new DatabaseController();
		ResultSet prod = null ;
		try  {
			Connection con = dbCon.getConnection();
			PreparedStatement st = con.prepareStatement(StringUtil.GET_PRODUCT_BY_ID);
			st.setString(1, id);
			prod= st.executeQuery();
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			
		}
//		return prod;
		return prod;
	}
	
	 public ResultSet getUserCartItem(String userID) {
		DatabaseController dbCon = new DatabaseController();
		ResultSet ret = null;
		try {
			Connection con = dbCon.getConnection();
			
			PreparedStatement st = con.prepareStatement(StringUtil.GET_CART_ITEM);
			st.setString(1, userID);
			
			ret= st.executeQuery();
		} catch (Exception e) {
			// TODO: handle exception
		}
		return ret;
	}
}

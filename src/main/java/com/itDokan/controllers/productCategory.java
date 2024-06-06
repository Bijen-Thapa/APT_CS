package com.itDokan.controllers;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.itDokan.controllers.database.DatabaseController;
import com.itDokan.models.productCategoryModel;

public class productCategory {

	public productCategory() {
	}

	public ArrayList<productCategoryModel> getProductCategory() {
		// db connection 
		DatabaseController dbCon = new DatabaseController();
		ArrayList<productCategoryModel> list = new ArrayList<>();
		try (Connection con = dbCon.getConnection()){
			String getAll = "SELECT * FROM product_category";
			PreparedStatement stat = con.prepareStatement(getAll);
			ResultSet result = stat.executeQuery();
			
			while (result.next()) {
				productCategoryModel cat = new productCategoryModel(Integer.parseInt(result.getString("id")), result.getString("name"), result.getString("description")); 
				list.add(cat);
				
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		
		return list;
	}
	
	public void print(String a) {
		System.out.println("prn"+a);
		
	}

}

package com.itDokan.controllers;

public class SaveProduct {
	String productName, databasePath;
	int productPrice;
	public SaveProduct() {
		// TODO Auto-generated constructor stub
	}
	public SaveProduct(String productName, int productPrice, String databasePath) {
		super();
		this.productName = productName;
		this.databasePath = databasePath;
		this.productPrice = productPrice;
	}
	
}

package com.itDokan.models;

import java.sql.Blob;

public class ProductModel {

	private String name, description;
	private float price;
	private Blob image;
	
	public ProductModel(String name, String description, float price, Blob image) {
		this.name = name;
		this.description = description;
		this.price = price;
		this.image = image;
		
	}

	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
	public Blob getImage() {
		return image;
	}
	public void setImage(Blob image) {
		this.image = image;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	
}

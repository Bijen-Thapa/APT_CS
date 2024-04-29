package com.itDokan.models;

import java.sql.Date;

public class ProductModel {

	private String name, description, model, brand, img;
	private int id, qty, price, category;
	private Date addedDate;
//	private Blob image;

	public String getDescription() {
		return description;
	}

	public ProductModel(String name, String description, String model, String brand, String img, int id, int qty,
			int price, int category, Date addedDate) {
		super();
		this.name = name;
		this.description = description;
		this.model = model;
		this.brand = brand;
		this.img = img;
		this.id = id;
		this.qty = qty;
		this.price = price;
		this.category = category;
		this.addedDate = addedDate;
	}

	
	
	public ProductModel(String name, String description, String model, String brand, String img, int qty, int price,
			int category) {
		super();
		this.name = name;
		this.description = description;
		this.model = model;
		this.brand = brand;
		this.img = img;
		this.qty = qty;
		this.price = price;
		this.category = category;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getModel() {
		return model;
	}

	public void setModel(String model) {
		this.model = model;
	}

	public String getBrand() {
		return brand;
	}

	public void setBrand(String brand) {
		this.brand = brand;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public int getQty() {
		return qty;
	}

	public void setQty(int qty) {
		this.qty = qty;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getCategory() {
		return category;
	}

	public void setCategory(int category) {
		this.category = category;
	}

	public Date getAddedDate() {
		return addedDate;
	}

	public void setAddedDate(Date addedDate) {
		this.addedDate = addedDate;
	}

	public int getId() {
		return id;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	

}

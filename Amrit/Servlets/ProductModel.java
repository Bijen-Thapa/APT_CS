package model;

import java.io.Serializable;

public class ProductModel {
	private int product_id;
	private String name;
	private int quantity;
	private String image;
	private String description;
	private int price;
	
	public ProductModel(int product_id, String name, int quantity, 
			String image, String description, int price) {
		this.setProduct_id(product_id);
		this.setName(name);
		this.setQuantity(quantity);
		this.setImage(image);
		this.setDescription(description);
		this.setPrice(price);
	}
	
	//Getter method start
	public int getProduct_id() {
		return product_id;
	}
	public String getName() {
		return name;
	}
	public int getQuantity() {
		return quantity;
	}
	public String getImage() {
		return image;
	}
	public String getDescription() {
		return description;
	}
	public int getPrice() {
		return price;
	}
	//Getter method end
	
	
	//Setter method start
	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	//Setter method end
}

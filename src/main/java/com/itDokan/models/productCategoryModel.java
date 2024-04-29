package com.itDokan.models;

public class productCategoryModel {
	String name, description;
	int id;
	
	public productCategoryModel(int id, String name, String description) {
		super();
		this.name = name;
		this.description = description;
		this.id = id;
	}
	

	public productCategoryModel(String name, String description) {
		super();
		this.name = name;
		this.description = description;
	}


	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
		
	
}

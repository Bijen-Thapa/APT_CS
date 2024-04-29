<%@page import="com.itDokan.models.productCategoryModel"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.itDokan.controllers.productCategory"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%-- 	<%@ include file="admin/admin_nav.jsp" %> --%>
	<form action="../../AddProductServlet" method="post">
		<div class="input_box">
			<label for="name"> name:</label> <input type="text" id="name"
				name="name" placeholder="name"  />
		</div>
		<div class="input_box">
			<label for="description">description:</label> <input type="text" id="description"
				name="description" placeholder="description"  />
		</div>
		<div class="input_box">
			<label for="price"> price:</label> <input type="number" id="price"
				name="price" placeholder="price"  />
		</div>
		<div class="input_box">
			<label for="image">image:</label> <input type="file" id="image"
				name="image" placeholder="image"  />
		</div>
		<div class="input_box">
			<label for="category">category:</label> 
			<select title="aaa">
				<option >select category</option>
				<% productCategory cat = new productCategory();
					ArrayList<productCategoryModel> lisst = cat.getProductCategory();
					for(productCategoryModel mod : lisst){ %>
					<option ><%=mod.getName() %></option>
					<% } %>
			</select>
		</div>
		<button type="submit" name="Submit">Submit</button>
	</form>
</body>
</html>
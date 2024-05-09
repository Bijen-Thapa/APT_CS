<%@page import="com.itDokan.models.ProductModel"%>
<%@page import="com.itDokan.controllers.productDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.itDokan.models.productCategoryModel"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.itDokan.controllers.productCategory"%>


<%@ page import="java.sql.*"%>
<!-- Import JDBC classes for database connectivity -->
<%@ page import="java.io.*,java.util.*,javax.servlet.*"%>
<!-- Import classes for I/O, utilities, and servlets -->



<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>



<style>
body {
	background-color: #333; /* Dark grey background */
	color: white; /* White text */
	font-family: Arial, sans-serif; /* Choose your font */
	padding: 20px; /* Add some padding for readability */
}

table {
	width: 100%;
	border-collapse: collapse;
	margin-top: 20px; /* Add space between header and table */
}

th, td {
	padding: 10px;
	text-align: left;
	border-bottom: 1px solid white; /* White border for cells */
}

th {
	background-color: #555; /* Dark grey for header */
	vertical-align: top; /* Align header text to the top */
	text-align: left; /* Align header text to the left */
}

tr:nth-child(even) {
	background-color: #444; /* Dark grey for even rows */
}

.form-group {
	margin-bottom: 10px;
}

.submit-btn {
	background-color: #007bff;
	color: white;
	border: none;
	padding: 10px 20px;
	cursor: pointer;
}

.submit-btn:hover {
	background-color: #0056b3;
}
</style>




</head>
<body>
	<jsp:include page="admin_nav.jsp"></jsp:include>


	<!-- 	<div class="w-full mt-12"> -->
	<!-- 		<p class="text-xl pb-3 flex items-center"> -->
	<!-- 			<i class="fas fa-list mr-3"></i> Input Form -->
	<!-- 		</p> -->
	<!-- 		<div class="bg-white overflow-auto"> -->
	<!-- 			<form action="../../../AddProductServlet" -->
	<!-- 				enctype="multipart/form-data" method="post"> -->
	<!-- 				<table class="min-w-full bg-white"> -->
	<!-- 					<thead class="bg-gray-800 text-white"> -->
	<!-- 						<tr> -->
	<!-- 								                                    <th class="text-left py-3 px-4 uppercase font-semibold text-sm">Product ID</th> -->
	<!-- 							<th class="text-left py-3 px-4 uppercase font-semibold text-sm">Name</th> -->
	<!-- 							<th -->
	<!-- 								class="w-1/3 text-left py-3 px-4 uppercase font-semibold text-sm">Image</th> -->
	<!-- 							<th -->
	<!-- 								class="w-1/3 text-left py-3 px-4 uppercase font-semibold text-sm">Description</th> -->
	<!-- 							<th class="text-left py-3 px-4 uppercase font-semibold text-sm">Quantity</th> -->
	<!-- 							<th class="text-left py-3 px-4 uppercase font-semibold text-sm">Price</th> -->
	<!-- 							<th class="text-left py-3 px-4 uppercase font-semibold text-sm">Category</th> -->
	<!-- 								                                    <th class="text-left py-3 px-4 uppercase font-semibold text-sm">Action</th> -->

	<!-- 						</tr> -->
	<!-- 					</thead> -->
	<!-- 					<tbody class="text-gray-700"> -->
	<!-- 						<tr> -->
	<!-- 																	<td class="text-left py-2 px-4"><input class="py-2 px-2" -->
	<!-- 																		id="product_id" name="product_id" type="text" -->
	<!-- 																		placeholder="product id"></td> -->
	<!-- 							yeso type le ailey samma kei farak parey xaina -->
	<%-- 							<% --%>
	// productDAO pro = new productDAO(); // String id = (String)
	request.getSession().getAttribute("editProduct"); // ProductModel
	product = pro.getProductById(id); // out.print("iddd"+id);
	<%-- 							%> --%>
	<%-- 							<td><%= id %></td> --%>

	<!-- 							<td class="text-left py-2 px-4"><input class="py-2 px-2" -->
	<%-- 								id="name" name="name" type="text" placeholder="item name" value="<%= product.getName() %>"> --%>
	<!-- 								</td> -->
	<!-- 							<td class="w-1/3 text-left py-2 px-4"> -->
	<%-- 							<img alt="" src="../<%= product.getImg() %>"> --%>
	<!-- 							<input -->
	<!-- 								class="py-2 px-2" id="img" name="img" type="file"></td> -->
	<!-- 							<td class="w-1/3 text-left py-2 px-4"><input -->
	<!-- 								class="py-2 px-2" id="description" name="description" -->
	<%-- 								type="text" placeholder="Something about product" value="<%= product.getDescription() %>"></td> --%>
	<!-- 							<td class="text-left py-2 px-4"><input class="py-2 px-2" -->
	<%-- 								id="quantity" name="qty" type="number" placeholder="1" value="<%= product.getQty() %>"></td> --%>
	<!-- 							<td class="text-left py-2 px-4"><input class="py-2 px-2" -->
	<%-- 								id="quantity" name="price" type="number" placeholder="$$$" value="<%= product.getPrice() %>"></td> --%>
	<!-- 							<td class="text-left py-2 px-4"><select name="category"> -->
	<!-- 									<option value="">--select category--</option> -->
	<%-- 									<% --%>
	// productCategory cat = new productCategory(); // ArrayList
	<productCategoryModel> lisst =
	cat.getProductCategory(); // for (productCategoryModel mod : lisst) { <%-- 									%>  --%>
	<%-- 									<option value="<%=mod.getId()%>"><%=mod.getName()%></option> --%>
	<%-- 									<% --%> // } <%-- 									%> --%> <!-- 							</select></td> -->
	<!-- 								                                    <td class="text-left py-2 px-4"><input class="py-2 px-2" id="price" name="price" type="number" placeholder="10"></td>  -->
	<!-- 							<td></td> --> <!-- 						</tr> --> <!-- 					</tbody> --> <!-- 				</table> -->
	<!-- 				<button class="py-2 px-4 bg-green-400 text-white" type="submit">Add</button> -->
	<!-- 			</form> --> <!-- 		</div> --> <!-- 	</div> -->


	<h1>Edit Product</h1>
	<!-- Heading for the page -->
	<table border="1">
		<!-- Table to display product information -->
		<tr>
			<th>Product Name</th>
			<!-- Header for product name column -->
			<th>Description</th>
			<!-- Header for description column -->
			<th>Category</th>
			<!-- Header for category column -->
			<th>Price</th>
			<!-- Header for price column -->
			<th>Quantity</th>
			<!-- Header for quantity column -->
		</tr>

		<%
		try {
			// Load the MySQL driver
			Class.forName("com.mysql.jdbc.Driver"); // Load the MySQL JDBC driver class 

			// Establish the connection
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/it_dokan", "root", ""); // Connect to the MySQL database -->

			// Create the statement
			Statement stmt = conn.createStatement(); // Create a statement object 

			// Execute the query for the product
			String productName = request.getParameter("productName"); // Retrieve product name from request parameter 
			String query = "SELECT * FROM product WHERE productname = ?"; // SQL query to select product data 
			PreparedStatement pstmt = conn.prepareStatement(query); // Prepare a statement with parameters 
			pstmt.setString(1, productName); // Set the product name parameter 
			ResultSet rs = pstmt.executeQuery(); // Execute the query and get the result set 

			// Display the product data
			if (rs.next()) { //Iterate through the result set 
				String productDescription = rs.getString("productdescription"); // Get product description from result set
				String category = rs.getString("category"); //Get category from result set //
				double price = rs.getDouble("price"); // Get price from result set //
				int quantity = rs.getInt("quantity"); //Get quantity from result set //
		%>
		<tr>
			<td><%=productName%> <!-- Display product name -->
				<form action="../UpdateProductNameServlet" method="post">
					<!-- Form to update product name -->
					<input type="hidden" name="productName" value="<%=productName%>">
					<!-- Hidden input for product name -->
					<input type="text" name="newProductName"
						placeholder="New Product Name" required>
					<!-- Input for new product name -->
					<button type="submit" class="submit-btn">Update</button>
					<!-- Submit button -->
				</form></td>
			<td>
				<form action="../UpdateProductDescriptionServlet" method="post">
					<!-- Form to update product description -->
					<input type="hidden" name="productName" value="<%=productName%>">
					<!-- Hidden input for product name -->
					<input type="text" name="productDescription"
						value="<%=productDescription%>" placeholder="New Description"
						required>
					<!-- Input for new description -->
					<button type="submit" class="submit-btn">Update</button>
					<!-- Submit button -->
				</form>
			</td>
			<td>
				<form action="../UpdateProductCategoryServlet" method="post">
					<!-- Form to update product category -->
					<input type="hidden" name="productName" value="<%=productName%>">
					<!-- Hidden input for product name -->
					<input type="text" name="category" value="<%=category%>"
						placeholder="New Category" required>
					<!-- Input for new category -->
					<button type="submit" class="submit-btn">Update</button>
					<!-- Submit button -->
				</form>
			</td>
			<td>
				<form action="../UpdateProductPriceServlet" method="post">
					<!-- Form to update product price -->
					<input type="hidden" name="productName" value="<%=productName%>">
					<!-- Hidden input for product name -->
					<input type="number" name="price" value="<%=price%>"
						placeholder="New Price" step="0.01" required>
					<!-- Input for new price -->
					<button type="submit" class="submit-btn">Update</button>
					<!-- Submit button -->
				</form>
			</td>
			<td>
				<form action="../UpdateProductQuantityServlet" method="post">
					<!-- Form to update product quantity -->
					<input type="hidden" name="productName" value="<%=productName%>">
					<!-- Hidden input for product name -->
					<input type="number" name="quantity" value="<%=quantity%>"
						placeholder="New Quantity" required>
					<!-- Input for new quantity -->
					<button type="submit" class="submit-btn">Update</button>
					<!-- Submit button -->
				</form>
			</td>
		</tr>
		<%
		}
		// Clean up
		rs.close();//-- Close result set 
		pstmt.close(); //-- Close prepared statement
		conn.close(); //-- Close connection 
		} catch (Exception e) {
		out.println("An error occurred: " + e.getMessage());// Print error message if an exception occurs
		}
		%>
	</table>
	<br>
	<a href="manageproduct.jsp" class="back-btn" style="color: white;">&#8678;
		Go Back</a> <!-- Link to go back to manage product page -->
</body>
</html>
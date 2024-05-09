<%@page import="com.itDokan.models.ProductModel"%>
<%@page import="com.itDokan.controllers.productDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.itDokan.models.productCategoryModel"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.itDokan.controllers.productCategory"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

</head>
<body>
<jsp:include page="admin_nav.jsp"></jsp:include>
	<div class="w-full mt-12">
		<p class="text-xl pb-3 flex items-center">
			<i class="fas fa-list mr-3"></i> Input Form
		</p>
		<div class="bg-white overflow-auto">
			<form action="../../../AddProductServlet"
				enctype="multipart/form-data" method="post">
				<table class="min-w-full bg-white">
					<thead class="bg-gray-800 text-white">
						<tr>
							<!-- 	                                    <th class="text-left py-3 px-4 uppercase font-semibold text-sm">Product ID</th> -->
							<th class="text-left py-3 px-4 uppercase font-semibold text-sm">Name</th>
							<th
								class="w-1/3 text-left py-3 px-4 uppercase font-semibold text-sm">Image</th>
							<th
								class="w-1/3 text-left py-3 px-4 uppercase font-semibold text-sm">Description</th>
							<th class="text-left py-3 px-4 uppercase font-semibold text-sm">Quantity</th>
							<th class="text-left py-3 px-4 uppercase font-semibold text-sm">Price</th>
							<th class="text-left py-3 px-4 uppercase font-semibold text-sm">Category</th>
							<!-- 	                                    <th class="text-left py-3 px-4 uppercase font-semibold text-sm">Action</th> -->

						</tr>
					</thead>
					<tbody class="text-gray-700">
						<tr>
							<!-- 										<td class="text-left py-2 px-4"><input class="py-2 px-2" -->
							<!-- 											id="product_id" name="product_id" type="text" -->
							<!-- 											placeholder="product id"></td> -->
							<!-- yeso type le ailey samma kei farak parey xaina -->
							<%
							productDAO pro = new productDAO();
							String id = (String) request.getSession().getAttribute("editProduct");
							ProductModel product = pro.getProductById(id);
							out.print("iddd"+id);
							%>
							<td><%= id %></td>
							
							<td class="text-left py-2 px-4"><input class="py-2 px-2"
								id="name" name="name" type="text" placeholder="item name" value="<%= product.getName() %>">
								</td>
							<td class="w-1/3 text-left py-2 px-4">
							<img alt="" src="../<%= product.getImg() %>">
							<input
								class="py-2 px-2" id="img" name="img" type="file"></td>
							<td class="w-1/3 text-left py-2 px-4"><input
								class="py-2 px-2" id="description" name="description"
								type="text" placeholder="Something about product" value="<%= product.getDescription() %>"></td>
							<td class="text-left py-2 px-4"><input class="py-2 px-2"
								id="quantity" name="qty" type="number" placeholder="1" value="<%= product.getQty() %>"></td>
							<td class="text-left py-2 px-4"><input class="py-2 px-2"
								id="quantity" name="price" type="number" placeholder="$$$" value="<%= product.getPrice() %>"></td>
							<td class="text-left py-2 px-4"><select name="category">
									<option value="">--select category--</option>
									<%
									productCategory cat = new productCategory();
									ArrayList<productCategoryModel> lisst = cat.getProductCategory();
									for (productCategoryModel mod : lisst) {
									%> 
									<option value="<%=mod.getId()%>"><%=mod.getName()%></option>
									<%
									}
									%>
							</select></td>
							<!-- 	                                    <td class="text-left py-2 px-4"><input class="py-2 px-2" id="price" name="price" type="number" placeholder="10"></td>  -->
							<td></td>
						</tr>
					</tbody>
				</table>
				<button class="py-2 px-4 bg-green-400 text-white" type="submit">Add</button>
			</form>

		</div>
	</div>
</body>
</html>
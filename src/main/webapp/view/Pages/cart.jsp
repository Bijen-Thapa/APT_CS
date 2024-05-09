<%@page import="java.sql.ResultSet"%>
<%@page import="com.itDokan.controllers.productDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="../Stylesheet/style.css"></head>


<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<link
	href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300&display=swap"
	rel="stylesheet">
<link href="css/style.css" rel="stylesheet" type="text/css">
  <meta name="viewport" content="width=device-width, initial-scale=1">


<body style="font-family: 'Open Sans', sans-serif">
	<%@ include file="header.jsp" %> 
	
<!-- 	<div class="w-full mt-12"> -->
<!-- 					<p class="text-xl pb-3 flex items-center"> -->
<!-- 						<i class="fas fa-list mr-3"></i> Latest Reports -->
<!-- 					</p> -->
<!-- 					<div class="bg-white overflow-auto"> -->
<!-- 						<form action="../../../UpdateProductServlet" > -->
<!-- 							<table class="min-w-full bg-white"> -->
<!-- 								<thead class="bg-gray-800 text-white"> -->
<!-- 									<tr> -->
<!-- 										<th -->
<!-- 											class="text-left py-3 px-4 uppercase font-semibold text-sm">Product -->
<!-- 											ID</th> -->
<!-- 										<th -->
<!-- 											class="text-left py-3 px-4 uppercase font-semibold text-sm">Name</th> -->
<!-- 										<th -->
<!-- 											class="text-left py-3 px-4 uppercase font-semibold text-sm">Image</th> -->
<!-- 										<th -->
<!-- 											class="text-left py-3 px-4 uppercase font-semibold text-sm">Description</th> -->
<!-- 										<th -->
<!-- 											class="text-left py-3 px-4 uppercase font-semibold text-sm">Category</th> -->
<!-- 										<th -->
<!-- 											class="text-left py-3 px-4 uppercase font-semibold text-sm">Quantity</th> -->
<!-- 										<th -->
<!-- 											class="text-left py-3 px-4 uppercase font-semibold text-sm">Price</th> -->
<!-- 										<th -->
<!-- 											class="text-left py-3 px-4 uppercase font-semibold text-sm">Action</th> -->
<!-- 									</tr> -->

<!-- 								</thead> -->
								
<!-- 									<tbody class="text-gray-700"> -->
<%-- 									<% --%>
// 										productDAO pro = new productDAO();
// 										String id = String.valueOf(request.getSession().getAttribute("userId"));
// 										ResultSet result = pro.getUserCartItem(id);
// 										while (result.next()) {
<%-- 									%> --%>
<!-- 									<tr> -->
<!-- 										<td  -->
<%-- 											class="text-left py-3 px-4 uppercase font-semibold text-sm" id="prod_id"><jsp:element name="prod_id"><%= result.getString("id") %></jsp:element> </td> --%>
<!-- 										<td -->
<%-- 											class="text-left py-3 px-4 uppercase font-semibold text-sm"><%=result.getString("name")%></td> --%>
<!-- <!-- 										<td --> -->
<%-- <%-- 											class="text-left py-3 px-2 uppercase font-semibold text-sm"><%=result.getString("image")%></td> --%> --%>
<!-- 										<td -->
<%-- 											class="text-left py-3 px-2 uppercase font-semibold text-sm"><img alt=""<%= result.getString("image") %> src="../../<%=result.getString("image") %>" style="height: 150px"></td> --%>
											
											
<!-- 										<td -->
<%-- 											class="text-left py-3 px-2 uppercase font-semibold text-sm"><%=result.getString("description")%></td> --%>
<!-- 										<td -->
<%-- 											class="text-left py-3 px-2 uppercase font-semibold text-sm"><%=result.getString("product_category")%></td> --%>
<!-- 										<td -->
<%-- 											class="text-left py-3 px-4 uppercase font-semibold text-sm"><%=result.getString("qty")%></td> --%>
<!-- 										<td -->
<%-- 											class="text-left py-3 px-4 uppercase font-semibold text-sm"><%=result.getString("price")%></td> --%>
<!-- 										<td> -->
<!-- <!-- 											<a class="bg-green-500 py-2 px-3 rounded text-white" href="editProduct.jsp"> --> -->
<!-- <!-- 												Edit</a> --> -->
<%-- 											<button class="bg-green-500 py-2 px-3 rounded text-white" name="edit" value="<%= result.getString("id") %>" formmethod="post"> --%>
<!-- 												Edit</button> -->
<!-- 											<button class="bg-red-500 py-2 px-3 rounded text-white" formmethod="post"> -->
<!-- 												Delete</button> -->
<!-- 										</td> -->
<!-- 									</tr> -->
<%-- 									<% --%>
// 									}
// // 									connection.close();
// 									} catch (Exception e) {
// 									e.printStackTrace();
// 									}
<%-- 									%> --%>
<!-- 								</tbody> -->
<!-- 								<tbody class="text-gray-700"> -->
<!-- 									<tr> -->
<!-- 										<td></td> -->
<!-- 									</tr> -->
<!-- 								</tbody> -->
<!-- 							</table> -->
<!-- 						</form> -->

<!-- 					</div> -->
<!-- 				</div> -->
	
	
	
	<h4 style="color:red; text-align: center">${cartIsEmpty }</h4>
	<div class="table-responsive" style="padding: 50px 100px;">
		<table class="table">
			<tr>
				<th>Option</th>
				<th>Id</th>
				<th>Name</th>
				<th>Photo</th>
				<th>Price</th>
				<th>Quantity</th>
				<th>Sub Total</th>
			</tr>
			<c:set var="total" value="0"></c:set>
			<c:forEach var="item" items="${sessionScope.cart}">
				<c:set var="total"
					value="${total + item.product.product_price * item.quantity }"></c:set>
				<tr>
					<td><a
						href="${pageContext.request.contextPath }/cart?action=remove&id=${item.product.product_id }"
						onclick="return confirm('Are you sure?')">Remove</a></td>
					<td>${item.product.product_id }</td>
					<td>${item.product.product_name }</td>
					<td><img src="${item.product.product_img_source }" width="120">
					</td>
					<td>${item.product.product_price }</td>
					<td>${item.quantity }</td>
					<td>${item.product.product_price * item.quantity }</td>
				</tr>
			</c:forEach>
			<tr>
				<td colspan="6" align="right">Total</td>
				<td>${total }</td>
			</tr>
		</table>
	</div>
	<br>
	<DIV style="text-align: center; padding: 0px 0px 50px;">
		<a href="${pageContext.request.contextPath }/products"><button class="btn-primary">Continue
				Shopping</button></a> <a
			href="${pageContext.request.contextPath }/checkout?action=buy"><button class="btn-warning">BUY</button></a>
	</DIV>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	
	
	
	
	
	
	
	
	
		
	
	<%@ include file="footer.jsp" %> 
</body>
</html>
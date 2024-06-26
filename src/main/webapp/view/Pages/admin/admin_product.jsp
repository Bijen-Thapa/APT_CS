<%@page import="com.itDokan.models.ProductModel"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.itDokan.controllers.database.DatabaseController"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.itDokan.models.productCategoryModel"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.itDokan.controllers.productCategory"%>


<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Tailwind Admin Template</title>
<meta name="author" content="David Grzyb">
<meta name="description" content="">

<!-- Tailwind -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/tailwindcss/2.2.19/tailwind.min.css"
	rel="stylesheet">
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	
<style>
@import
	url('https://fonts.googleapis.com/css?family=Karla:400,700&display=swap')
	;

.font-family-karla {
	font-family: karla;
}

.bg-sidebar {
	background: #3d68ff;
}

.cta-btn {
	color: #3d68ff;
}

.upgrade-btn {
	background: #1947ee;
}

.upgrade-btn:hover {
	background: #0038fd;
}

.active-nav-link {
	background: #1947ee;
}

.nav-item:hover {
	background: #1947ee;
}

.account-link:hover {
	background: #3d68ff;
}
</style>
</head>
<body class="bg-gray-100 font-family-karla flex">
	<% 
		HttpSession session1 = request.getSession(false);
		if(session1.getAttribute("addProductStatus") != null){
			
		
		
	%>
	<script type="text/javascript">
	
		<% if (session1.getAttribute("addProductStatus")=="success"){ %>
		sweetAlert("Product added successfully!")
	
		<% }else{ %>
		sweetAlert("Failed", "The product was not added, try again!")
		<% } %>
		
		<% 
	if (session1.getAttribute("deleted") != null) {
		%>
		sweetAlert("<%= session1.getAttribute("deleted") %>")
		
		<%
		session1.setAttribute("deleted", null);
		}
		
		%>
		<% 
	if (session1.getAttribute("updateProductStatus") != null) {
		%>
		sweetAlert("<%= session1.getAttribute("updateProductStatus") %>")
		
		<%
		session1.setAttribute("updateProductStatus", null);
		}
		
		%>
		
	</script>
	
	<% }else{
// 		if (session1.getAttribute("productUpdated") == true){
// 			sweetAlert("Product updated successfully!")
	}
		%>
	<script type="text/javascript">
		function sweetAlert(msg) {
			swal({
				  title: "Success",
				  text: msg,
				  icon: "success",
				  button: "ok"
				});
		}
		function sweetAlert(msg, notOk) {
			swal({
				  title: "warning",
				  text: msg,
				  icon: "warning",
				  button: "ok"
				});
		}
		
	</script>

	<jsp:include page="admin_nav.jsp"></jsp:include>
	<div class="w-full flex flex-col h-screen overflow-y-hidden">
		<!-- Desktop Header -->
		<header class="w-full items-center bg-white py-2 px-6 hidden sm:flex">
			<div class="w-1/2"></div>
			<div x-data="{ isOpen: false }"
				class="relative w-1/2 flex justify-end">
				<button @click="isOpen = !isOpen"
					class="realtive z-10 w-12 h-12 rounded-full overflow-hidden border-4 border-gray-400 hover:border-gray-300 focus:border-gray-300 focus:outline-none">
					<img src="https://source.unsplash.com/uJ8LNVCBjFQ/400x400">
				</button>
				<button x-show="isOpen" @click="isOpen = false"
					class="h-full w-full fixed inset-0 cursor-default"></button>
				<div x-show="isOpen"
					class="absolute w-32 bg-white rounded-lg shadow-lg py-2 mt-16">
					<a href="#" class="block px-4 py-2 account-link hover:text-white">Account</a>
					<a href="#" class="block px-4 py-2 account-link hover:text-white">Support</a>
					<form class="block px-4 py-2 account-link hover:text-white" action="../../../signoutServlet" method="post"><button>Sign out</button></form>
				</div>
			</div>
		</header>

		<!-- Mobile Header & Nav -->
		<header x-data="{ isOpen: false }"
			class="w-full bg-sidebar py-5 px-6 sm:hidden">
			<div class="flex items-center justify-between">
				<a href="index.html"
					class="text-white text-3xl font-semibold uppercase hover:text-gray-300">Admin</a>
				<button @click="isOpen = !isOpen"
					class="text-white text-3xl focus:outline-none">
					<i x-show="!isOpen" class="fas fa-bars"></i> <i x-show="isOpen"
						class="fas fa-times"></i>
				</button>
			</div>

			<!-- Dropdown Nav -->
			<nav :class="isOpen ? 'flex': 'hidden'" class="flex flex-col pt-4">
				<a href="index.html"
					class="flex items-center active-nav-link text-white py-2 pl-4 nav-item">
					<i class="fas fa-tachometer-alt mr-3"></i> Dashboard
				</a> <a href="blank.html"
					class="flex items-center text-white opacity-75 hover:opacity-100 py-2 pl-4 nav-item">
					<i class="fas fa-sticky-note mr-3"></i> Blank Page
				</a> <a href="tables.html"
					class="flex items-center text-white opacity-75 hover:opacity-100 py-2 pl-4 nav-item">
					<i class="fas fa-table mr-3"></i> Tables
				</a> <a href="forms.html"
					class="flex items-center text-white opacity-75 hover:opacity-100 py-2 pl-4 nav-item">
					<i class="fas fa-align-left mr-3"></i> Forms
				</a> <a href="tabs.html"
					class="flex items-center text-white opacity-75 hover:opacity-100 py-2 pl-4 nav-item">
					<i class="fas fa-tablet-alt mr-3"></i> Tabbed Content
				</a> <a href="calendar.html"
					class="flex items-center text-white opacity-75 hover:opacity-100 py-2 pl-4 nav-item">
					<i class="fas fa-calendar mr-3"></i> Calendar
				</a> <a href="#"
					class="flex items-center text-white opacity-75 hover:opacity-100 py-2 pl-4 nav-item">
					<i class="fas fa-cogs mr-3"></i> Support
				</a> <a href="#"
					class="flex items-center text-white opacity-75 hover:opacity-100 py-2 pl-4 nav-item">
					<i class="fas fa-user mr-3"></i> My Account
				</a> <a href="#"
					class="flex items-center text-white opacity-75 hover:opacity-100 py-2 pl-4 nav-item">
					<i class="fas fa-sign-out-alt mr-3"></i> Sign Out
				</a>
				<button
					class="w-full bg-white cta-btn font-semibold py-2 mt-3 rounded-lg shadow-lg hover:shadow-xl hover:bg-gray-300 flex items-center justify-center">
					<i class="fas fa-arrow-circle-up mr-3"></i> Upgrade to Pro!
				</button>
			</nav>
			<!-- <button class="w-full bg-white cta-btn font-semibold py-2 mt-5 rounded-br-lg rounded-bl-lg rounded-tr-lg shadow-lg hover:shadow-xl hover:bg-gray-300 flex items-center justify-center">
                <i class="fas fa-plus mr-3"></i> New Report
            </button> -->
		</header>

		<div class="w-full overflow-x-hidden border-t flex flex-col">
			<main class="w-full flex-grow p-6">
				<h1 class="text-3xl text-black pb-6">Product</h1>

				<div class="w-full mt-12">
					<p class="text-xl pb-3 flex items-center">
						<i class="fas fa-list mr-3"></i> Input Form
					</p>
					<div class="bg-white overflow-auto">
						<form action="../../../AddProductServlet" enctype="multipart/form-data" method="post">
							<table class="min-w-full bg-white">
								<thead class="bg-gray-800 text-white">
									<tr>
										<!-- 	                                    <th class="text-left py-3 px-4 uppercase font-semibold text-sm">Product ID</th> -->
										<th
											class="text-left py-3 px-4 uppercase font-semibold text-sm">Name</th>
										<th
											class="w-1/3 text-left py-3 px-4 uppercase font-semibold text-sm">Image</th>
										<th
											class="w-1/3 text-left py-3 px-4 uppercase font-semibold text-sm">Description</th>
										<th
											class="text-left py-3 px-4 uppercase font-semibold text-sm">Quantity</th>
										<th
											class="text-left py-3 px-4 uppercase font-semibold text-sm">Price</th>
										<th
											class="text-left py-3 px-4 uppercase font-semibold text-sm">Category</th>
										<!-- 	                                    <th class="text-left py-3 px-4 uppercase font-semibold text-sm">Action</th> -->

									</tr>
								</thead>
								<tbody class="text-gray-700">
									<tr>
										<!-- 										<td class="text-left py-2 px-4"><input class="py-2 px-2" -->
										<!-- 											id="product_id" name="product_id" type="text" -->
										<!-- 											placeholder="product id"></td> -->
										<!-- yeso type le ailey samma kei farak parey xaina -->
										<td class="text-left py-2 px-4"><input class="py-2 px-2"
											id="name" name="name" type="text" placeholder="item name"></td>
										<td class="w-1/3 text-left py-2 px-4"><input
											class="py-2 px-2" id="img" name="img" type="file"  ></td>
										<td class="w-1/3 text-left py-2 px-4"><input
											class="py-2 px-2" id="description" name="description"
											type="text" placeholder="Something about product"></td>
										<td class="text-left py-2 px-4"><input class="py-2 px-2"
											id="quantity" name="qty" type="number" placeholder="1"></td>
										<td class="text-left py-2 px-4"><input class="py-2 px-2"
											id="quantity" name="price" type="number" placeholder="$$$"></td>
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
				<div class="w-full mt-12">
					<p class="text-xl pb-3 flex items-center">
						<i class="fas fa-list mr-3"></i> Latest Reports
					</p>
					<div class="bg-white overflow-auto">
						<form action="../../../UpdateProductServlet" >
							<table class="min-w-full bg-white">
								<thead class="bg-gray-800 text-white">
									<tr>
										<th
											class="text-left py-3 px-4 uppercase font-semibold text-sm">Product
											ID</th>
										<th
											class="text-left py-3 px-4 uppercase font-semibold text-sm">Name</th>
										<th
											class="text-left py-3 px-4 uppercase font-semibold text-sm">Image</th>
										<th
											class="text-left py-3 px-4 uppercase font-semibold text-sm">Description</th>
										<th
											class="text-left py-3 px-4 uppercase font-semibold text-sm">Category</th>
										<th
											class="text-left py-3 px-4 uppercase font-semibold text-sm">Quantity</th>
										<th
											class="text-left py-3 px-4 uppercase font-semibold text-sm">Price</th>
										<th
											class="text-left py-3 px-4 uppercase font-semibold text-sm">Action</th>
									</tr>

								</thead>
								
									<tbody class="text-gray-700">
									<%
									DatabaseController dbCon = new DatabaseController();
									try (Connection con = dbCon.getConnection()) {
										// 										connection = DriverManager.getConnection(connectionUrl + database, userid, password);
										// 										statement = connection.createStatement();
										String sql = "select * from product";
										PreparedStatement st = con.prepareStatement(sql);
										
										ResultSet result = st.executeQuery();
										while (result.next()) {
									%>
									<tr>
										<td 
											class="text-left py-3 px-4 uppercase font-semibold text-sm" id="prod_id"><jsp:element name="prod_id"><%= result.getString("id") %></jsp:element> </td>
										<td
											class="text-left py-3 px-4 uppercase font-semibold text-sm"><%=result.getString("name")%></td>
<!-- 										<td -->
<%-- 											class="text-left py-3 px-2 uppercase font-semibold text-sm"><%=result.getString("image")%></td> --%>
										<td
											class="text-left py-3 px-2 uppercase font-semibold text-sm"><img alt=""<%= result.getString("image") %> src="../../<%=result.getString("image") %>" style="height: 150px"></td>
											
											
										<td
											class="text-left py-3 px-2 uppercase font-semibold text-sm"><%=result.getString("description")%></td>
										<td
											class="text-left py-3 px-2 uppercase font-semibold text-sm"><% for (productCategoryModel p: lisst) {
											if(p.getId()==result.getInt("product_category")){ 
											%>
											<%=   p.getName()%>
											<% }} %>
											</td>
										<td
											class="text-left py-3 px-4 uppercase font-semibold text-sm"><%=result.getString("qty")%></td>
										<td
											class="text-left py-3 px-4 uppercase font-semibold text-sm"><%=result.getString("price")%></td>
										<td>
<!-- 											<a class="bg-green-500 py-2 px-3 rounded text-white" href="editProduct.jsp"> -->
<!-- 												Edit</a> -->
											<button class="bg-green-500 py-2 px-3 rounded text-white" name="editButton" value="<%= result.getString("id") %>" formmethod="get">
												Edit</button>
											<button class="bg-red-500 py-2 px-3 rounded text-white" onclick="<% session1.setAttribute("doDeleteProduct", result.getString("id")); %>" formmethod="post">
												Delete</button>
										</td>
									</tr>
									<%
									}
// 									connection.close();
									} catch (Exception e) {
									e.printStackTrace();
									}
									%>
								</tbody>
								<tbody class="text-gray-700">
									<tr>
										<td></td>
									</tr>
								</tbody>
							</table>
						</form>

					</div>
				</div>
			</main>
		</div>

	</div>

	<!-- AlpineJS -->
	<script
		src="https://cdn.jsdelivr.net/gh/alpinejs/alpine@v2.x.x/dist/alpine.min.js"
		defer></script>
	<!-- Font Awesome -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/js/all.min.js"
		integrity="sha256-KzZiKy0DWYsnwMF+X1DvQngQ2/FxF7MF3Ff72XcpuPs="
		crossorigin="anonymous"></script>
	<!-- ChartJS -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.min.js"
		integrity="sha256-R4pqcOYV8lt7snxMQO/HSbVCFRPMdrhAFMH+vr9giYI="
		crossorigin="anonymous"></script>

	<script>
		var chartOne = document.getElementById('chartOne');
		var myChart = new Chart(chartOne,
				{
					type : 'bar',
					data : {
						labels : [ 'Red', 'Blue', 'Yellow', 'Green', 'Purple',
								'Orange' ],
						datasets : [ {
							label : '# of Votes',
							data : [ 12, 19, 3, 5, 2, 3 ],
							backgroundColor : [ 'rgba(255, 99, 132, 0.2)',
									'rgba(54, 162, 235, 0.2)',
									'rgba(255, 206, 86, 0.2)',
									'rgba(75, 192, 192, 0.2)',
									'rgba(153, 102, 255, 0.2)',
									'rgba(255, 159, 64, 0.2)' ],
							borderColor : [ 'rgba(255, 99, 132, 1)',
									'rgba(54, 162, 235, 1)',
									'rgba(255, 206, 86, 1)',
									'rgba(75, 192, 192, 1)',
									'rgba(153, 102, 255, 1)',
									'rgba(255, 159, 64, 1)' ],
							borderWidth : 1
						} ]
					},
					options : {
						scales : {
							yAxes : [ {
								ticks : {
									beginAtZero : true
								}
							} ]
						}
					}
				});

		var chartTwo = document.getElementById('chartTwo');
		var myLineChart = new Chart(chartTwo,
				{
					type : 'line',
					data : {
						labels : [ 'Red', 'Blue', 'Yellow', 'Green', 'Purple',
								'Orange' ],
						datasets : [ {
							label : '# of Votes',
							data : [ 12, 19, 3, 5, 2, 3 ],
							backgroundColor : [ 'rgba(255, 99, 132, 0.2)',
									'rgba(54, 162, 235, 0.2)',
									'rgba(255, 206, 86, 0.2)',
									'rgba(75, 192, 192, 0.2)',
									'rgba(153, 102, 255, 0.2)',
									'rgba(255, 159, 64, 0.2)' ],
							borderColor : [ 'rgba(255, 99, 132, 1)',
									'rgba(54, 162, 235, 1)',
									'rgba(255, 206, 86, 1)',
									'rgba(75, 192, 192, 1)',
									'rgba(153, 102, 255, 1)',
									'rgba(255, 159, 64, 1)' ],
							borderWidth : 1
						} ]
					},
					options : {
						scales : {
							yAxes : [ {
								ticks : {
									beginAtZero : true
								}
							} ]
						}
					}
				});
	</script>
</body>
</html>

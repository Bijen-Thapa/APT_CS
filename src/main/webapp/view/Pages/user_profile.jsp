<%@page import="com.itDokan.rest.StringUtil"%>
<%@page import="com.itDokan.models.UserModel"%>
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
<title>Profile Page</title>
<meta name="author" content="David Grzyb">
<meta name="description" content="">

<!-- Tailwind -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/tailwindcss/2.2.19/tailwind.min.css"
	rel="stylesheet">
<style>
@import
	url('https://fonts.googleapis.com/css?family=Karla:400,700&display=swap')
	;

.font-family-karla {
	font-family: karla;
}

.bg-sidebar {
	background: #000000;
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
	background: #6a6a6;
}

.nav-item:hover {
	background: #2c2c2f;
}

.account-link:hover {
	background: #3d68ff;
}
</style>
</head>
<body style="display: flow;">
		<% 
		HttpSession session1 = request.getSession(false);
		
		if (session1.getAttribute("userName")== null){
			response.sendRedirect("login.jsp");
		}
		
		%>
<div>
	<jsp:include page="header.jsp"></jsp:include>
</div>
<div style="display: flex;">
	
	<jsp:include page="user_nav.jsp"></jsp:include>
	<div class="bg-gray-100 font-family-karla flex"> 
	<div class="w-full flex flex-col h-screen overflow-y-hidden">
		
		

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
			</nav>
			<!-- <button class="w-full bg-white cta-btn font-semibold py-2 mt-5 rounded-br-lg rounded-bl-lg rounded-tr-lg shadow-lg hover:shadow-xl hover:bg-gray-300 flex items-center justify-center">
                <i class="fas fa-plus mr-3"></i> New Report
            </button> -->
		</header>

		<%
		String id = String.valueOf(session.getAttribute("userName"));
		DatabaseController dc = new DatabaseController();
		//                     out.print();
		try (Connection con = dc.getConnection()) {
			String query = StringUtil.GET_USER_BY_USER_NAME;
			PreparedStatement pst = con.prepareStatement(query);
			pst.setString(1, id);
			try (ResultSet rs = pst.executeQuery()) {
				while (rs.next()) {
		%>
		<div class="flex flex-col">
			<div class="w-60 h-60">
				<img src="../<%=rs.getString("image")%>"
					class="w-full h-full rounded-full" alt="User Profile">
			</div>
					<input class="py-2 px-2" id="img" name="img" type="file">
			<div class="border-solid border-2">
				<div class="px-4 py-5 sm:px-6 ">
					<h3 class="text-lg leading-6 font-medium text-gray-900">User
						Profile</h3>
					<p class="mt-1 max-w-2xl text-sm text-gray-500">This is some
						information about the user.</p>
				</div>
				<div class="border-t border-gray-200 px-4 py-5 sm:p-0">
					<div class="py-3 sm:py-5 sm:grid sm:grid-cols-3 sm:gap-4 sm:px-6">
					<div>
					<dt class="text-sm font-medium text-gray-500">First Name</dt>
						<input class="py-2 px-2" id="description" name="firstName"
							type="text" placeholder="First Name"
							value="<%=rs.getString("first_name")%>">
					</div>
						<div>
					<dt class="text-sm font-medium text-gray-500">Last Name</dt>
						<input class="py-2 px-2" id="description" name="lastName"
							type="text" placeholder="First Name"
							value="<%=rs.getString("last_name")%>">
					</div>
					</div>
<!-- 					<div class="py-3 sm:py-5 sm:grid sm:grid-cols-3 sm:gap-4 sm:px-6"> -->
<!-- 						<dt class="text-sm font-medium text-gray-500">Full name</dt> -->
<!-- 						<dd class="mt-1 text-sm text-gray-900 sm:mt-0 sm:col-span-2"> -->
<!-- 							Amrit Gurung</dd> -->
					</div>
					<div class="py-3 sm:py-5 sm:grid sm:grid-cols-3 sm:gap-4 sm:px-6">
						<dt class="text-sm font-medium text-gray-500">Email address</dt>
						<input class="py-2 px-2" id="description" name="email"
							type="text" placeholder="Email"
							value="<%=rs.getString("email")%>">
					</div>
					<div class="py-3 sm:py-5 sm:grid sm:grid-cols-3 sm:gap-4 sm:px-6">
						<dt class="text-sm font-medium text-gray-500">Phone number</dt>
						<input class="py-2 px-2" id="description" name="phoneNumber"
							type="text" placeholder="First Name"
							value="<%=rs.getString("phone_number")%>">
					</div>
					<div class="py-3 sm:py-5 sm:grid sm:grid-cols-3 sm:gap-4 sm:px-6">
						<dt class="text-sm font-medium text-gray-500">Address</dt>
						<input class="py-2 px-2" id="description" name="address"
							type="text" placeholder="Address"
							value="<%=rs.getString("address")%>">
					</div>
				</div>
			</div>
		</div>


		<%
		}

		} catch (Exception e) {
		e.printStackTrace();
		}
		} catch (Exception e1) {
		e1.printStackTrace();
		}
		%>



	</div>
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

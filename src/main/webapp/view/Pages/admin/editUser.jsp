<%@page import="com.itDokan.rest.StringUtil"%>
<%@page import="com.itDokan.controllers.database.DatabaseController"%>
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

</head>
<body>
	<jsp:include page="admin_nav.jsp"></jsp:include>


	<div class="w-full mt-12">
		<p class="text-xl pb-3 flex items-center">
			<i class="fas fa-list mr-3"></i> Input Form
		</p>
		<div class="bg-white overflow-auto">
			<form action="../../../updateUserDetailServlet"
				enctype="multipart/form-data" method="post" style="width: max-content;">
				<table class="min-w-full bg-white">
					<thead class="bg-gray-800 text-white">
						<tr>
							<th class="text-left py-3 px-4 uppercase font-semibold text-sm">ID</th>
							<th class="text-left py-3 px-4 uppercase font-semibold text-sm">User Name</th>
							<th class="text-left py-3 px-4 uppercase font-semibold text-sm">First Name</th>
							<th class="text-left py-3 px-4 uppercase font-semibold text-sm">Last Name</th>
							<th class="text-left py-3 px-4 uppercase font-semibold text-sm">Gender</th>
							<th class="text-left py-3 px-4 uppercase font-semibold text-sm">DOB</th>
							<th class="text-left py-3 px-4 uppercase font-semibold text-sm">Phone Number</th>
							<th class="text-left py-3 px-4 uppercase font-semibold text-sm">Email</th>
							<th class="text-left py-3 px-4 uppercase font-semibold text-sm">Address</th>

						</tr>
					</thead>
					<tbody class="text-gray-700">
						<tr>
							<%
                    String id = String.valueOf(session.getAttribute("editUser") );
                    DatabaseController dc = new DatabaseController();
//                     out.print();
                    try (Connection con = dc.getConnection()) {
                        String query = "SELECT * FROM user WHERE id = ?";
                        PreparedStatement pst = con.prepareStatement(query);
                            pst.setString(1, id);
                            try (ResultSet rs = pst.executeQuery()) {
                                while (rs.next()) {
                                   
                    %>


							<td class="text-left py-2 px-4"><input class="py-2 px-2"
								id="product_id" name="product_id" type="text"
								placeholder="product id" value="<%= id %>" disabled="disabled"></td>
							<!-- 								yeso type le ailey samma kei farak parey xaina -->
							<td class="text-left py-2 px-4"><input class="py-2 px-2"
								id="name" name="userName" type="text" placeholder="User Name"
								value="<%=rs.getString("user_name")%>"></td>
							<td class="text-left py-2 px-4"><input class="py-2 px-2"
								id="name" name="firstName" type="text" placeholder="First Name"
								value="<%=rs.getString("first_name")%>"></td>
							<td class="text-left py-2 px-4"><input class="py-2 px-2"
								id="name" name="name" type="text" placeholder="User Name"
								value="<%=rs.getString("last_name")%>"></td>
							<td class="text-left py-2 px-4"><input class="py-2 px-2"
								id="name" name="name" type="text" placeholder="User Name"
								value="<%=rs.getString("gender")%>"></td>
							<td class="text-left py-2 px-4"><input class="py-2 px-2"
								id="name" name="name" type="text" placeholder="User Name"
								value="<%=rs.getString("dob")%>"></td>
							<td class="text-left py-2 px-4"><input class="py-2 px-2"
								id="name" name="name" type="text" placeholder="User Name"
								value="<%=rs.getString("phone_number")%>"></td>
							<td class="w-1/3 text-left py-2 px-4"><input
								class="py-2 px-2" id="description" name="description"
								type="text" placeholder="Something about product"
								value="<%=rs.getString("email")%>"></td>
							<td class="text-left py-2 px-4"><input class="py-2 px-2"
								id="addedDate" name="addedDate" type="text" placeholder="date"
								value="<%=rs.getString("address")%>" disabled="disabled"></td>
							
							<td></td>
							<% 
                        }	
                    
                }
             catch (SQLException e) {
                e.printStackTrace();
            }
        } catch (Exception e1) {
            e1.printStackTrace();
        }
                    %>
						</tr>
					</tbody>
				</table>
				<button class="py-2 px-4 bg-green-400 text-white" type="submit" name="updateProduct" onclick="<% request.getSession(false).setAttribute("doUpdateProductDetail", true); %>" value="doUpdate">Save</button>
			</form>
		</div>
	</div>


</body>
</html>
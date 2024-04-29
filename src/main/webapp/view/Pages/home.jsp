<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
	<%
	String id = request.getParameter("userid");
	String driver = "com.mysql.jdbc.Driver";
	String connectionUrl = "jdbc:mysql://localhost:3306/";
	String database = "test";
	String userid = "root";
	String password = "";
	try {
	Class.forName(driver);
	} catch (ClassNotFoundException e) {
	e.printStackTrace();
	}
	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="../stylesheets/footer.css">
<link rel="stylesheet" href="../stylesheets/header.css">
</head>
<style>
main{
	height: 100vh;
}
</style>
<body>
	<jsp:include page= "header.jsp" />
	<main>
	<h1>Retrieve data from database in jsp</h1>
		<table border="1">
		<tr>
		<td>Product_id</td>
		<td>Product name</td>
		<td>Quantity</td>
		<td>Image</td>
		<td>Description</td>
		<td>Price</td>
		</tr>
		<%
		try{
		connection = DriverManager.getConnection(connectionUrl+database, userid, password);
		statement=connection.createStatement();
		String sql ="select * from product";
		resultSet = statement.executeQuery(sql);
		while(resultSet.next()){
		%>
		<tr>
		<td><%=resultSet.getString("product_id") %></td>
		<td><%=resultSet.getString("name") %></td>
		<td><%=resultSet.getString("quantity") %></td>
		<td><%=resultSet.getString("img") %></td>
		<td><%=resultSet.getString("description") %></td>
		<td><%=resultSet.getString("price") %></td>
		</tr>
		<%
		}
		connection.close();
		} catch (Exception e) {
		e.printStackTrace();
		}
		%>
		</table>
	</main>
	<jsp:include page= "footer.jsp" />
</body>
</html>
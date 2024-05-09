<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<% 
String userSession = (String) session.getAttribute("username");
if(userSession != null){
		out.println("Welcome, " + userSession);
	} else{
		response.sendRedirect(request.getContextPath() + "/view/Pages/login.jsp");
	}
%>
	
	
<a href="<%= request.getContextPath() %>../../LogoutServlet">
<button class= "logout">Log out</button></a>

</body>
</html>
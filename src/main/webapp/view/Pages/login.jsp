<%@page import="com.google.protobuf.Type"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Login Page</title>
<link rel="stylesheet" href="../Stylesheet/login.css" />
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

</head>
<body>
	<%
	HttpSession session1 = request.getSession();
	if (session1.getAttribute("error") != null) {
	String msg = String.valueOf(session1.getAttribute("error"));
		
	%>
	<script type="text/javascript">
		sweetAlert("<%= msg %>")
	</script>

	<%
	}
	%>
	<script type="text/javascript">
		function sweetAlert(msg) {
			swal({
				title : "warning",
				text : msg,
				icon : "warning",
				button : "ok"
			});
		}
	</script>
	<input type="hidden" id="status"
		value="<%=request.getAttribute("status")%>">
	<div class="container">
		<div>
			<h1>LogIn</h1>
		</div>
		<form action="../../LoginServlet" method="post">
			<div class="user_details">
				<div class="input_box">
					<label for="username">Username:</label> <input type="text"
						id="username" name="userName" placeholder="Username" />
				</div>
				<div class="input_box">
					<label for="password">Password:</label> <input type="password"
						id="password" name="password" placeholder="Password" required />
				</div>

				<button type="submit" name="Submit">Log In</button>
			</div>
			<p style="font-size: 14px; text-align: center">
				Don't have an account? <a href="registrations.jsp">Sign Up</a>
			</p>
		</form>
	</div>
	<script type="text/javascript">
		function alert(msg) {
			swal({
				title : "Good job!",
				text : "You clicked the button!",
				icon : "success",
			});
		}
	</script>
</body>
</html>

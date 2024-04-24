<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
	<meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Login Page</title>
    <link rel="stylesheet" href="../Stylesheet/login.css" />
  </head>
  <body>
    <div class="container">
     <%--Display successful message after registration --%>
    <% String success = request.getParameter("success");
    if (success != null && success.equals("RegistrationSuccessful")){%>
    <p style="color: blue;">Registration Successful! You can now log in.</p>
    <%} %>
    
      <div>
        <h1>LogIn</h1>
      </div>
      <form action="../../LoginServlet" method="post">
        <div class="user_details">
          <div class="input_box">
            <label for="username">Username:</label>
            <input
              type="text"
              id="username"
              name="userName"
              placeholder="Username"
            />
          </div>
          <div class="input_box">
            <label for="password">Password:</label>
            <input
              type="password"
              id="password"
              name="password"
              placeholder="Password"
              required
            />
          </div>

          <button type="submit" name="Submit">Log In</button>
        </div>
        <p style="font-size: 14px; text-align: center">
          Don't have an account? <a href="registrations.jsp">Sign Up</a>
          <!-- // TODO need to uodate into JSP -->
        </p>
      </form>
      
      <%--Display error message if login fails --%>
      <% String error = request.getParameter("error");
       if (error != null && error.equals("1")) { %>
           <p style="color: red;">Invalid username or password.</p>
    <% } %>
    

    </div>
  </body>
</html>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Registration</title>
<link rel="stylesheet" href="../Stylesheet/registration.css" />
</head>
<body>
	<div class="container">
		<div>
			<h1>Registration</h1>
		</div>

		<form action="../../RegisterServlet" method="post">
			<div class="user_details">
				<div class="input_box">
					<label for="fname">First name:</label> <input type="text" id="name"
						name="firstName" placeholder="First name" required />
				</div>
				<div class="input_box">
					<label for="lname">Last name:</label> <input type="text" id="name"
						name="lastName" placeholder="Last name" required />
				</div>
				<div class="input_box">
					<label for="phone">Phone Number:</label> <input type="text"
						id="phoneNumber" name="phoneNumber" placeholder="Phone number" required />
				</div>
				<div class="input_box">
					<label for="email">Email:</label> <input type="text" id="email"
						name="email" placeholder="Your email" required />
				</div>
				<div class="input_box">
					<label for="address">Address:</label> <input type="text"
						id="address" name="address" placeholder="Your address" required>
				</div>

				<div class="input_box">
					<label for="dob">Date of Birth:</label> <input type="date" id="dob"
						name="dob" required>
				</div>
				<div class="genderOption">
					<label for="gender">Gender:</label> <input type="radio" id="male"
						name="gender" value="male" checked /> <label for="male">Male</label>
					<input type="radio" id="female" name="gender" value="female" /> <label
						for="female">Female</label>
				</div>
				<div class="input_box">
					<label for="userName">Username:</label> <input type="text"
						id="userName" name="userName" placeholder="Username" required />
				</div>
				<div class="input_box">
					<label for="password">Password:</label> <input type="password"
						id="password" name="password" placeholder="Password" required />
				</div>
				<div class="input_box">
					<label for="repassword">Re-password:</label> <input type="password"
						id="repassword" name="repassword" placeholder="Retype password"
						required />
				</div>

				<button type="submit" name="Submit">Sign Up</button>
			</div>
			<p style="font-size: 14px; text-align: center">
				Have an account?<a href="login.jsp">Log In</a>
				<!-- // TODO need to update to jsp -->
			</p>
		</form>
	</div>
</body>
</html>

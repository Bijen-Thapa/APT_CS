<!DOCTYPE html>
<html lang="en-US">
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>JavaScript</title>
		<!-- This CSS and font is purely for presentational purposes. -->
		<link rel="preconnect" href="https://fonts.googleapis.com" />
		<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600;700;900&display=swap" rel="stylesheet" />
        <link rel="stylesheet" href="../stylesheets/welcome.css">
	</head>
	<body>
        <div class="container">
            <h1 id="main-heading">Favourite Movie Franchise</h1>
            <ul>
                <li class="list-items"><span>Neo</span>
                     The Matrix</li>
                <li class="list-items">Star Wars</li>
                <li class="list-items">Harry Potter</li>
                <li class="list-items">Lord of Rings</li>
                <li class="list-items">Marvel</li>
            </ul>
            <button class="btn" onclick="sample()">Click Me</button>
             <%
			 out.println("<p> The above button will change the background color, text color and font size too.");
			 %>
        </div>
	</body>
    <script src="script.js"></script>
</html>
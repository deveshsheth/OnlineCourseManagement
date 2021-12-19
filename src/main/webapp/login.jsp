<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Course</title>
<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
<!-- Google Fonts -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap">
<!-- Bootstrap core CSS -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Material Design Bootstrap -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.1/css/mdb.min.css"
	rel="stylesheet">

<!-- JQuery -->
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- Bootstrap tooltips -->
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.4/umd/popper.min.js"></script>
<!-- Bootstrap core JavaScript -->
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/js/bootstrap.min.js"></script>
<!-- MDB core JavaScript -->
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.1/js/mdb.min.js"></script>
</head>
<body>
	<%
	String firstnameError = (String) request.getAttribute("firstnameError");
	String passwordError = (String) request.getAttribute("passwordError");

	String firstnameValue = (String) request.getAttribute("firstnameValue");
	String passwordValue = (String) request.getAttribute("passwordValue");
	%>
	<%@ include file="Header.jsp"%>
	<div class="container" style="margin-top: 5%; width: 500px">
		<!-- Default form login -->
		${Errormsg}
		<form class="text-center border border-light p-5"
			action="LoginServlet" method="post">

			<p class="h4 mb-4">Sign in</p>


			<input type="text" id="defaultLoginFormEmail"
				class="form-control mb-4" placeholder="Username" name="firstname"
				value="<%=firstnameValue == null ? "" : firstnameValue%>">
			<p style="color: red"><%=firstnameError == null ? "" : firstnameError%></p>

			<input type="password" id="defaultLoginFormPassword"
				class="form-control mb-4" placeholder="Password" name="password"
				value="<%=passwordValue == null ? "" : passwordValue%>">
			<p style="color: red"><%=passwordError == null ? "" : passwordError%></p>



			<button class="btn btn-info btn-block my-4" type="submit">Sign
				in</button>


			<p>
				Not a member? <a href="signup.jsp">Register</a>
			</p>



		</form>

	</div>
	<br>
	<br>
	<br>
	<br>
	<%@ include file="Footer.jsp"%>
</body>
</html>
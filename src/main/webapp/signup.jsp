<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Course</title>
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
</head>
<body>

	<%
	String firstnameError = (String) request.getAttribute("firstnameError");
	String lastnameError = (String) request.getAttribute("lastnameError");
	String phonenoError = (String) request.getAttribute("phonenoError");
	String emailError = (String) request.getAttribute("emailError");
	String passwordError = (String) request.getAttribute("passwordError");

	String firstnameValue = (String) request.getAttribute("firstnameValue");
	String lastnameValue = (String) request.getAttribute("lastnameValue");
	String phonenoValue = (String) request.getAttribute("phonenoValue");
	String emailValue = (String) request.getAttribute("emailValue");
	String passwordValue = (String) request.getAttribute("passwordValue");
	%>

	<%@ include file="Header.jsp"%>
	<!-- Default form register -->
	<div class="container" style="margin-top: 5%">
		<form class="text-center border border-light p-5" action="AddUsers"
			method="post">

			<p class="h4 mb-4">Sign up</p>

			<div class="form-row mb-4">
				<div class="col">
					<!-- First name -->
					<input type="text" id="defaultRegisterFormFirstName"
						class="form-control" placeholder="First name" name="firstname"
						value="<%=firstnameValue == null ? "" : firstnameValue%>">
					<p style="color: red"><%=lastnameError == null ? "" : lastnameError%></p>
				</div>
				<div class="col">
					<!-- Last name -->
					<input type="text" id="defaultRegisterFormLastName"
						class="form-control" placeholder="Last name" name="lastname"
						value="<%=lastnameValue == null ? "" : lastnameValue%>">
					<p style="color: red"><%=lastnameError == null ? "" : lastnameError%></p>
				</div>
			</div>



			<!-- E-mail -->
			<input type="email" id="defaultRegisterFormEmail"
				class="form-control mb-4" placeholder="E-mail" name="email"
				value="<%=emailValue == null ? "" : emailValue%>">
			<p style="color: red"><%=emailError == null ? "" : emailError%></p>

			<!-- Password -->
			<input type="password" id="defaultRegisterFormPassword"
				class="form-control" placeholder="Password"
				aria-describedby="defaultRegisterFormPasswordHelpBlock"
				name="password"
				value="<%=passwordValue == null ? "" : passwordValue%>">
			<p style="color: red"><%=passwordError == null ? "" : passwordError%></p>

			<!-- Phone number -->
			<input type="text" id="defaultRegisterPhonePassword"
				class="form-control" placeholder="Phone number"
				aria-describedby="defaultRegisterFormPhoneHelpBlock" name="phoneno"
				value="<%=phonenoValue == null ? "" : phonenoValue%>">
			<p style="color: red"><%=phonenoError == null ? "" : phonenoError%></p>

			<button class="btn btn-info my-4 btn-block" type="submit">Sign
				in</button>

			<p>
				Already a member? <a href="login.jsp">login</a>
			</p>

		</form>


	</div>
	<br>
	<br>
	<br>
	<%@ include file="Footer.jsp"%>
</body>
</html>
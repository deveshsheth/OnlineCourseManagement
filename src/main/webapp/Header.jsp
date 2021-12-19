<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
	<%!int a = 23;%>
	<!--Navbar-->
	<nav class="navbar navbar-expand-lg navbar-dark primary-color"
		style="height: 70px">

		<!-- Navbar brand -->
		<a class="navbar-brand" href="userhome.jsp"><i
			class="fas fa-book-open" style="color: #fff"></i>&nbsp;&nbsp;Course</a>

		<!-- Collapse button -->
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#basicExampleNav" aria-controls="basicExampleNav"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<!-- Collapsible content -->
		<div class="collapse navbar-collapse" id="basicExampleNav">

			<!-- Links -->
			<ul class="navbar-nav mr-auto">
				<li class="nav-item"><a class="nav-link" href="userhome.jsp"><b>Home</b>
						<span class="sr-only">(current)</span> </a></li>
				<li class="nav-item"><a class="nav-link" href="About.jsp"><b>About</b></a>
				</li>

				<li class="nav-item"><a class="nav-link" href="Contact.jsp"><b>Contact</b></a></li>


			</ul>

			<%
			if (session.getAttribute("Firstname") == null) {
			%>
			<ul class="navbar-nav ml-auto">
				<li class="nav-item"><a href="login.jsp"
					class="nav-link waves-light" mdbWavesEffect
					routerLinkActive="router-link-active"> Sign in</a></li>
				<li class="nav-item active"><a href="signup.jsp"
					class="nav-link waves-light" mdbWavesEffect>Sign up</a></li>
			</ul>
			<%
			} else {
			%>
			<div class="collapse navbar-collapse" id="basicExampleNav">
				<ul class="navbar-nav mr-auto">

					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" id="navbarDropdownMenuLink"
						data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Course</a>
						<div class="dropdown-menu dropdown-primary"
							aria-labelledby="navbarDropdownMenuLink">
							<a class="dropdown-item" href="ListDataScienceUser">Data
								Science</a> <a class="dropdown-item" href="ListCyberSecurityUser">CyberSecurity</a>
							<a class="dropdown-item" href="ListWebDevelopmentUser">Web
								Development</a>
						</div></li>
				</ul>
			</div>

			<div class="alert alert-success alert-dismissible fade show"
				role="alert">
				<strong>Hello <%=session.getAttribute("Firstname") %>&nbsp;!</strong> You should now check the courses.
				<button type="button" class="close" data-dismiss="alert"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<ul class="navbar-nav ml-auto">
				<li class="nav-item active"><a href="LogoutServlet"
					class="nav-link waves-light" mdbWavesEffect>Logout</a></li>

			</ul>

			<%
			}
			%>

			<br>
		</div>

	</nav>

</body>
</html>
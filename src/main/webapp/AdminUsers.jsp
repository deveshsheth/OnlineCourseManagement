<%@page import="com.bean.UserBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Course</title>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="assets/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="assets/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="assets/css/style.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
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
	ArrayList<UserBean> user = (ArrayList<UserBean>) request.getAttribute("rs");
	%>

	<div class="main-wrapper">
		<div class="header">
			<div class="header-left">
				<a href="adminhome.jsp" class="logo"> <i
					class="fas fa-book-open" style="color: #fff"></i> <span>Course</span>
				</a>
			</div>
			<a id="toggle_btn" href="javascript:void(0);"><i
				class="fa fa-bars"></i></a> <a id="mobile_btn"
				class="mobile_btn float-left" href="#sidebar"><i
				class="fa fa-bars"></i></a>
			<ul class="nav user-menu float-right">


				<li class="nav-item dropdown has-arrow"><a href="#"
					class="dropdown-toggle nav-link user-link" data-toggle="dropdown">
						<span class="user-img"> <img class="rounded-circle"
							src="assets/img/user.jpg" width="24" alt="Admin"> <span
							class="status online"></span>
					</span> <span>Admin</span>
				</a>
					<div class="dropdown-menu">
						<!-- <a class="dropdown-item" href="profile.html">My Profile</a>  -->
						<!-- class="dropdown-item" href="edit-profile.html">Edit Profile</a> <a
							class="dropdown-item" href="settings.html">Settings</a> <a -->
						<a class="dropdown-item" href="userhome.jsp">Logout</a>
					</div></li>
			</ul>
			<div class="dropdown mobile-user-menu float-right">
				<a href="#" class="dropdown-toggle" data-toggle="dropdown"
					aria-expanded="false"><i class="fa fa-ellipsis-v"></i></a>
				<div class="dropdown-menu dropdown-menu-right">
					<a class="dropdown-item" href="userhome.jsp">Logout</a>
				</div>
			</div>
		</div>
		<div class="sidebar" id="sidebar">
			<div class="sidebar-inner slimscroll">
				<div id="sidebar-menu" class="sidebar-menu">
					<ul>
						<li class="menu-title">Main</li>
						<li><a href="countcourseadmin"><i
								class="fas fa-tachometer-alt"></i> <span>Dashboard</span></a></li>
						<li><a href="ListDataScienceAdmin"><i
								class="fas fa-laptop"></i> <span>Data Science</span></a></li>
						<li><a href="ListCyberSecurityAdmin"><i
								class="fas fa-laptop"></i> <span>CyberSecurity</span></a></li>
						<li><a href="ListWebDevelopmentAdmin"><i
								class="fas fa-laptop"></i> <span>Web Development</span></a></li>
						<li class="active"><a href="ListUsers"><i
								class="fas fa-user"></i> <span>Users</span></a></li>

					</ul>
				</div>
			</div>
		</div>
	</div>
	<div class="page-wrapper">
		<div class="content">
			<br>


			<div class="row">
				<div class="col-sm-4 col-3">
					<h4 class="page-title">
						<b>Register Users</b>
					</h4>
				</div>
				<div class="col-sm-8 col-9 text-right m-b-20">
					<button type="button" id="btnExport"
						class="btn btn-outline-info waves-effect">
						<i class="far fa-file-pdf"></i>&nbsp; PDF
					</button>
				</div>
			</div>
		

			<table id="tblCustomers" class="table">
				<caption>List of Users</caption>
				<thead>
					<tr>
						<!-- <th scope="col">#</th> -->
						<th scope="col">FirstName</th>
						<th scope="col">LastName</th>
						<th scope="col">Phoneno</th>
						<th scope="col">Email</th>
					</tr>
				</thead>
				<tbody>
					<%
					for (UserBean us : user) {
					%>
					<tr>
						<%-- <th scope="row"><%=us.getUid()%></th> --%>
						<td><%=us.getFirstname()%></td>
						<td><%=us.getLastname()%></td>
						<td><%=us.getPhoneno()%></td>
						<td><%=us.getEmail()%></td>

					</tr>
					<%
					}
					%>
				</tbody>
			</table>
		</div>
	</div>
	<script type="text/javascript"
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.22/pdfmake.min.js"></script>
	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/0.4.1/html2canvas.min.js"></script>
	<script type="text/javascript">
		$("body").on("click", "#btnExport", function() {
			html2canvas($('#tblCustomers')[0], {
				onrendered : function(canvas) {
					var data = canvas.toDataURL();
					var docDefinition = {
						content : [ {
							image : data,
							width : 500
						} ]
					};
					pdfMake.createPdf(docDefinition).download("Report.pdf");
				}
			});
		});
	</script>
</body>
</html>
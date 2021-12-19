<%@page import="com.bean.CyberSecurityBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=0">
<!-- <link rel="shortcut icon" type="image/x-icon"
	href="assets/img/favicon.ico"> -->
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

</head>

<body>
	<div class="main-wrapper">
		<div class="header">
			<div class="header-left">
				<a href="countCourse" class="logo"> <i class="fas fa-book-open"
					style="color: #fff"></i> <span>Course</span>
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
						<li class="Active"><a href="countcourseadmin"><i
								class="fas fa-tachometer-alt"></i> <span>Dashboard</span></a></li>
						<li><a href="ListDataScienceAdmin"><i
								class="fas fa-laptop"></i> <span>Data Science</span></a></li>
						<li><a href="ListCyberSecurityAdmin"><i
								class="fas fa-laptop"></i> <span>CyberSecurity</span></a></li>
						<li><a href="ListWebDevelopmentAdmin"><i
								class="fas fa-laptop"></i> <span>Web Development</span></a></li>
						<li><a href="ListUsers"><i class="fas fa-user"></i>
								<span>Users</span></a></li>

					</ul>
				</div>
			</div>
		</div>
	</div>
	<div class="page-wrapper" style="background-color: #fff">
		<div class="content">
			<br>
			<div class="row">
				<div class="col-md-6 col-sm-6 col-lg-6 col-xl-3">
					<div class="dash-widget">
						<span class="dash-widget-bg1"><i class="fas fa-laptop-code"></i></span>
						<div class="dash-widget-info text-right">
							<h3>${countDs}</h3>
							<span class="widget-title1">DataScience <i
								class="fa fa-check" aria-hidden="true"></i></span>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-sm-6 col-lg-6 col-xl-3">
					<div class="dash-widget">
						<span class="dash-widget-bg2"><i class="fas fa-laptop-code"></i></span>
						<div class="dash-widget-info text-right">
							<h3>${countCs}</h3>
							<span class="widget-title2">CyberSecurity <i
								class="fa fa-check" aria-hidden="true"></i></span>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-sm-6 col-lg-6 col-xl-3">
					<div class="dash-widget">
						<span class="dash-widget-bg3"><i class="fas fa-laptop-code"></i></span>
						<div class="dash-widget-info text-right">
							<h3>${countWd}</h3>
							<span class="widget-title3">WebDevelopment<i
								class="fa fa-check" aria-hidden="true"></i></span>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-sm-6 col-lg-6 col-xl-3">
					<div class="dash-widget">
						<span class="dash-widget-bg4"><i class="fas fa-users"></i></span>
						<div class="dash-widget-info text-right">
							<h3>${countUs}</h3>
							<span class="widget-title4">Users <i class="fa fa-check"
								aria-hidden="true"></i></span>
						</div>
					</div>
				</div>

			</div>

		</div>

	</div>

	<div class="sidebar-overlay" data-reff=""></div>
	<script src="assets/js/jquery-3.2.1.min.js"></script>
	<script src="assets/js/popper.min.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/jquery.slimscroll.js"></script>
	<script src="assets/js/Chart.bundle.js"></script>
	<script src="assets/js/chart.js"></script>
	<script src="assets/js/app.js"></script>


</body>



</html>
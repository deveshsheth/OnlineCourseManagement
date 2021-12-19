<%@page import="com.bean.WebDevelopmentBean"%>
<%@page import="java.util.ArrayList"%>
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
<!-- bootstrap core css -->
<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
<!-- font awesome style -->
<link href="css/font-awesome.min.css" rel="stylesheet" />

<!-- Custom styles for this template -->
<link href="css/style.css" rel="stylesheet" />
<!-- responsive style -->
<link href="css/responsive.css" rel="stylesheet" />
<style>
.pt-3-half {
	padding-top: 1.4rem;
}
</style>

</head>
<body>
	<%
	ArrayList<WebDevelopmentBean> webdevelopment = (ArrayList<WebDevelopmentBean>) request.getAttribute("rs");
	%>
	<%@ include file="Header.jsp"%>
	<br>
	<br>
	<div class="container">
		<!-- Editable table -->
		<div class="card">
			<h3
				class="card-header text-center font-weight-bold text-uppercase py-4">
				Web Development Course</h3>
			<div class="card-body">
				<div id="table" class="table-editable">
					<div class="row">
						<div class="col">
							<!-- Search form -->
							<div class="md-form mt-0">
								<input class="form-control" style="width: 50%" type="text"
									placeholder="Search Course" aria-label="Search">
							</div>
						</div>

						<div class="col">
							<span class="table-add float-right mb-3 mr-2"><a
								href="CartDetail.jsp" class="text-success"><i
									class="fas fa-shopping-cart fa-2x" aria-hidden="true"></i><span
								class="badge badge-pill bg-danger float-right">${productCount}</span></a></span>

						</div>

					</div>
					<table
						class="table table-bordered table-responsive-md table-striped text-center">
						<thead>
							<tr>

								<th class="text-center"><b>CourseName</b></th>
								<th class="text-center"><b>Duration</b></th>
								<th class="text-center"><b>Price</b></th>
								<th class="text-center"><b>Confirm</b></th>
							</tr>
						</thead>
						<tbody>
							<%
							for (WebDevelopmentBean wd : webdevelopment) {
							%>
							<tr>
								
								<td class="pt-3-half" contenteditable="true"><%=wd.getWname()%></td>
								<td class="pt-3-half" contenteditable="true"><%=wd.getWduration()%></td>
								<td class="pt-3-half" contenteditable="true"><%=wd.getWprice()%></td>
								<td><a href="AddtoCartWebDevelopment"><span class="table-remove"><button type="button"
											class="btn btn-primary btn-rounded btn-sm my-0">
											Enroll</button></span></a></td>
							</tr>
							<%
							}
							%>
							
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
	<br>
	<br>
	<!-- Editable table -->


	<%@include file="Footer.jsp"%>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Course</title>
<!-- Font Awesome -->
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
	<%@include file="Header.jsp"%>

	<br>
	<br>
	<div class="container">
		<!-- Card -->
		<div id="tblCustomers" class="card">

			<br>
			<p class="page-title" style="text-align: center;font-size: 30px">
				<b><u><i>Cart Details</i></u></b>
			</p>
			<br>
			<div class="row">
				<div class="col-sm-4 col-3">
					<div class="container">
						<table>
							<thead>
								<tr>

									<th scope="col"><b>Name</b></th>
									<th scope="col"><b>&nbsp;:</b></th>
									<td><b>&nbsp;&nbsp;Devesh Sheth</b></td>

								</tr>
							</thead>
							<tbody>
								<tr>
									<th scope="col"><b>Total Course</b></th>
									<th scope="col"><b>&nbsp;:</b></th>
									<td><b>&nbsp;&nbsp;4</b></td>

								</tr>

							</tbody>
						</table>
					</div>
				</div>
				<div class="col-sm-8 col-9 text-right m-b-20">
					<button type="button" id="btnExport"
						class="btn btn-outline-info waves-effect">
						<i class="far fa-file-pdf"></i>&nbsp; PDF
					</button>
					&nbsp;&nbsp;&nbsp;
				</div>
			</div>
			<br>

			<div class="container">

				<div class="row">
					<div class="col-sm-4 col-3">
						<h4 class="page-title">
							<b>DataScience Course</b>
						</h4>

					</div>

				</div>

				<table class="table table-striped table-bordered">
					<thead>
						<tr>
							<!-- <th scope="col">#</th> -->
							<th scope="col"><b>Course</b></th>
							<th scope="col"><b>Duration</b></th>
							<th scope="col"><b>Price</b></th>
							<!-- <th scope="col"><b>Action</b></th> -->
						</tr>
					</thead>
					<tbody>

						<tr>
							<!-- <th scope="row">1</th> -->
							<td>Angular</td>
							<td>9-Months</td>
							<td>Rs.5900</td>
							<!-- <td><span class="table-remove"><button type="button"
										class="btn btn-danger btn-rounded btn-sm my-0">
										Delete</button></span></td> -->

						</tr>
						<tr>
							<!-- <th scope="row">1</th> -->
							<td>React</td>
							<td>5-Months</td>
							<td>Rs.5900</td>
							<!-- <td><span class="table-remove"><button type="button"
										class="btn btn-danger btn-rounded btn-sm my-0">
										Delete</button></span></td> -->

						</tr>
						

					</tbody>
				</table>
			</div>
			
			
			
			
			
			<div class="container">

				<div class="row">
					<div class="col-sm-4 col-3">
						<h4 class="page-title">
							<b>CyberSecurity Course</b>
						</h4>

					</div>

				</div>

				<table class="table table-striped table-bordered">
					<thead>
						<tr>
							<!-- <th scope="col">#</th> -->
							<th scope="col"><b>Course</b></th>
							<th scope="col"><b>Duration</b></th>
							<th scope="col"><b>Price</b></th>
							<!-- <th scope="col"><b>Action</b></th> -->
						</tr>
					</thead>
					<tbody>

						<tr>
							<!-- <th scope="row">1</th> -->
							<td>Angular</td>
							<td>9-Months</td>
							<td>Rs.5900</td>
							<!-- <td><span class="table-remove"><button type="button"
										class="btn btn-danger btn-rounded btn-sm my-0">
										Delete</button></span></td> -->

						</tr>
						<tr>
							<!-- <th scope="row">1</th> -->
							<td>React</td>
							<td>5-Months</td>
							<td>Rs.5900</td>
							<!-- <td><span class="table-remove"><button type="button"
										class="btn btn-danger btn-rounded btn-sm my-0">
										Delete</button></span></td> -->

						</tr>
						

					</tbody>
				</table>
			</div>
			
			
			
			
			
			<div class="container">

				<div class="row">
					<div class="col-sm-4 col-3">
						<h4 class="page-title">
							<b>WebDevelopment Course</b>
						</h4>

					</div>

				</div>

				<table class="table table-striped table-bordered">
					<thead>
						<tr>
							<!-- <th scope="col">#</th> -->
							<th scope="col"><b>Course</b></th>
							<th scope="col"><b>Duration</b></th>
							<th scope="col"><b>Price</b></th>
							<!-- <th scope="col"><b>Action</b></th> -->
						</tr>
					</thead>
					<tbody>

						<tr>
							<!-- <th scope="row">1</th> -->
							<td>Angular</td>
							<td>9-Months</td>
							<td>Rs.5900</td>
							<!-- <td><span class="table-remove"><button type="button"
										class="btn btn-danger btn-rounded btn-sm my-0">
										Delete</button></span></td>
 -->
						</tr>
						<tr>
							<!-- <th scope="row">1</th> -->
							<td>React</td>
							<td>5-Months</td>
							<td>Rs.5900</td>
							<!-- <td><span class="table-remove"><button type="button"
										class="btn btn-danger btn-rounded btn-sm my-0">
										Delete</button></span></td> -->

						</tr>
						

					</tbody>
				</table>
			</div>
			

		</div>

	</div>
	<br>
	<br>

	<%@include file="Footer.jsp"%>



	
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
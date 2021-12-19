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
/* slider section */
.bg-1 {
	background: url("./courseimg/aboutushome.jpg") no-repeat;
	background-size: cover;
	position: relative;
	height: 300px;
}

.about_section:before {
	content: "";
	position: absolute;
	left: 0;
	top: 0;
	bottom: 0;
	right: 0;
	width: 100%;
	height: 100%;
	opacity: 0.9;
	background: #223a66;
}
</style>
</head>
<body>
	<%@ include file="Header.jsp"%>

	<section class="about_section bg-1">
		<div id="customCarousel1" class="carousel slide" data-ride="carousel">
			<div class="carousel-inner">
				<div class="carousel-item active">
					<div class="container ">


						<div class="detail-box">

							<h1
								style="text-align: center; padding-top: 10%; color: #fff; font-size: 50px; font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif">
								<b></b> <br>

							</h1>


						</div>


					</div>
				</div>

			</div>

		</div>
	</section>
	<br><br>
	<div class="container">

		<!--Section: Contact v.2-->
		<section class="mb-4">

			<!--Section heading-->
			<h2 class="h1-responsive font-weight-bold text-center my-4">Contact
				us</h2>
			<!--Section description-->
			<p class="text-center w-responsive mx-auto mb-5">Do you have any
				questions? Please do not hesitate to contact us directly. Our team
				will come back to you within a matter of hours to help you.</p>

			<div class="row">

				<!--Grid column-->
				<div class="col-md-9 mb-md-0 mb-5">
					<form id="contact-form" name="contact-form" action="mail.php"
						method="POST">

						<!--Grid row-->
						<div class="row">

							<!--Grid column-->
							<div class="col-md-6">
								<div class="md-form mb-0">
									<input type="text" id="name" name="name" class="form-control">
									<label for="name" class="">Your name</label>
								</div>
							</div>
							<!--Grid column-->

							<!--Grid column-->
							<div class="col-md-6">
								<div class="md-form mb-0">
									<input type="text" id="email" name="email" class="form-control">
									<label for="email" class="">Your email</label>
								</div>
							</div>
							<!--Grid column-->

						</div>
						<!--Grid row-->

						<!--Grid row-->
						<div class="row">
							<div class="col-md-12">
								<div class="md-form mb-0">
									<input type="text" id="subject" name="subject"
										class="form-control"> <label for="subject" class="">Subject</label>
								</div>
							</div>
						</div>
						<!--Grid row-->

						<!--Grid row-->
						<div class="row">

							<!--Grid column-->
							<div class="col-md-12">

								<div class="md-form">
									<textarea type="text" id="message" name="message" rows="2"
										class="form-control md-textarea"></textarea>
									<label for="message">Your message</label>
								</div>

							</div>
						</div>
						<!--Grid row-->

					</form>

					<div class="text-center text-md-left">
						<a class="btn btn-primary"
							onclick="document.getElementById('contact-form').submit();">Send</a>
					</div>
					<div class="status"></div>
				</div>
				<!--Grid column-->

				<!--Grid column-->
				<div class="col-md-3 text-center">
					<ul class="list-unstyled mb-0">
						<li><i class="fas fa-map-marker-alt fa-2x"></i>
							<p>Ahmedabad, India</p></li>

						<li><i class="fas fa-phone mt-4 fa-2x"></i>
							<p>+91 8658745852</p></li>

						<li><i class="fas fa-envelope mt-4 fa-2x"></i>
							<p>course21@gmail.com</p></li>
					</ul>
				</div>
				<!--Grid column-->

			</div>

		</section>
		<!--Section: Contact v.2-->
	</div>
	<br><br><br>

	<%@ include file="Footer.jsp"%>
</body>
</html>
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
.slider_section {
	-webkit-box-flex: 1;
	-ms-flex: 1;
	flex: 1;
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
	padding: 75px 0;
	background-color: #fafafa;
	position: relative;
}

.slider_section .row {
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
}

.slider_section #customCarousel1 {
	width: 100%;
	position: unset;
}

.slider_section .detail-box h5 {
	color: #44b89d;
}

.slider_section .detail-box h1 {
	font-weight: bold;
	margin-bottom: 25px;
	line-height: 58px;
	font-size: 3rem;
}

.slider_section .detail-box a {
	display: inline-block;
	padding: 10px 45px;
	background-color: #44b89d;
	color: #ffffff;
	border-radius: 45px;
	border: 1px solid #44b89d;
	-webkit-transition: all 0.3s;
	transition: all 0.3s;
	margin-top: 15px;
}

.slider_section .detail-box a:hover {
	background-color: transparent;
	color: #44b89d;
}

.slider_section .img-box img {
	width: 100%;
}

.slider_section .carousel_btn_box {
	position: absolute;
	bottom: 0;
	left: 15px;
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-pack: justify;
	-ms-flex-pack: justify;
	justify-content: space-between;
	width: 105px;
	height: 50px;
	-webkit-transform: translateY(50%);
	transform: translateY(50%);
	z-index: 3;
}

.slider_section .carousel_btn_box .carousel-control-prev,
	.slider_section .carousel_btn_box .carousel-control-next {
	position: unset;
	width: 50px;
	height: 50px;
	background-color: #063547;
	opacity: 1;
	-webkit-transition: all 0.2s;
	transition: all 0.2s;
	font-size: 18px;
	border-radius: 100%;
}

.slider_section .carousel_btn_box .carousel-control-prev img,
	.slider_section .carousel_btn_box .carousel-control-next img {
	width: 10px;
}

.slider_section .carousel_btn_box .carousel-control-prev:hover,
	.slider_section .carousel_btn_box .carousel-control-next:hover {
	background-color: #44b89d;
}
</style>
</head>
<body>
	<%@include file="Header.jsp"%>

	<section class="slider_section ">
		<div id="customCarousel1" class="carousel slide" data-ride="carousel">
			<div class="carousel-inner">
				<div class="carousel-item active">
					<div class="container ">
						<div class="row">
							<div class="col-md-6">
								<div class="detail-box">

									<h1>
										Best Education <br>

									</h1>
									<p>We provide our best services for our best course and<br>
										always try to achieve our client's trust and satisfaction.</p>

								</div>
							</div>
							<div class="col-md-6">
								<div class="img-box">
									<img src="./courseimg/courseshome.png" alt="">
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>

		</div>
	</section>


	<div class="container">
		<section class="magazine-section my-5">

			<!-- Section heading -->
			<h2 class="h1-responsive font-weight-bold text-center my-5">Our Best Course</h2>
			<!-- Section description -->
			<!-- <p class="text-center w-responsive mx-auto mb-5">We provide our best services for our best course and always try to achieve our client's trust and satisfaction.</p> -->

			<!-- Card deck -->
			<div class="card-deck">

				<!-- Card -->
				<div class="card mb-4">

					<!--Card image-->
					<div class="view overlay">
						<img class="card-img-top"
							src="./courseimg/datasciencehome.png"
							alt="Card image cap" style="height: 200px"> <a href="#!">
							<div class="mask rgba-white-slight"></div>
						</a>
					</div>

					<!--Card content-->
					<div class="card-body">

						<!--Title-->
						<h4 class="card-title">Data Science</h4>
						<!--Text-->
						<p class="card-text">Data science is an interdisciplinary field that uses scientific methods, processes, algorithms, structured and unstructured data, 
						and apply knowledge and actionable insights from data across a broad range of application domains. </p>
						<!-- Provides extra visual weight and identifies the primary action in a set of buttons -->
						<a href="ListDataScienceUser"><button type="button" class="btn btn-primary">Read
							more</button></a>

					</div>

				</div>
				<!-- Card -->

				<!-- Card -->
				<div class="card mb-4">

					<!--Card image-->
					<div class="view overlay">
						<img class="card-img-top"
							src="./courseimg/webdevelopmenthome.jpg"
							alt="Card image cap"> <a href="#!">
							<div class="mask rgba-white-slight"></div>
						</a>
					</div>

					<!--Card content-->
					<div class="card-body">

						<!--Title-->
						<h4 class="card-title">Web Development</h4>
						<!--Text-->
						<p class="card-text">Web development is the work involved in developing a Web site for the 
						Internet or an intranet. Web development can range from developing a simple single static 
						page of plain text to complex web applications. </p>
						<!-- Provides extra visual weight and identifies the primary action in a set of buttons -->
						<a href="ListWebDevelopmentUser"><button type="button" class="btn btn-primary">Read
							more</button></a>

					</div>

				</div>
				<!-- Card -->

				<!-- Card -->
				<div class="card mb-4">

					<!--Card image-->
					<div class="view overlay">
						<img class="card-img-top"
							src="./courseimg/cybersecurityhome.png"
							alt="Card image cap"> <a href="#!">
							<div class="mask rgba-white-slight"></div>
						</a>
					</div>

					<!--Card content-->
					<div class="card-body">

						<!--Title-->
						<h4 class="card-title">Cyber Security</h4>
						<!--Text-->
						<p class="card-text">Cybersecurity is the protection of computer systems and networks from information 
						disclosure, damage to their hardware, software, or electronic data, as well as from the disruption or misdirection of the services they provide.</p>
						<!-- Provides extra visual weight and identifies the primary action in a set of buttons -->
						<a href="ListCyberSecurityUser"><button type="button" class="btn btn-primary">Read
							more</button></a>

					</div>

				</div>
				<!-- Card -->

			</div>
			<!-- Card deck -->
		</section>
	</div>


	<%@include file="Footer.jsp"%>
</body>
</html>
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
	background-color: #fff;
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
<%@ include file="Header.jsp" %>

	<section class="about_section bg-1">
		<div id="customCarousel1" class="carousel slide" data-ride="carousel">
			<div class="carousel-inner">
				<div class="carousel-item active">
					<div class="container ">


						<div class="detail-box">

							<h1
								style="text-align: center; padding-top: 10%; color: #fff; font-size: 50px; font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif">
								<b>About us</b> <br>

							</h1>


						</div>


					</div>
				</div>

			</div>

		</div>
	</section>

	<div class="section-title">
		<p
			style="color: #107eed; text-align: center; padding-top: 20px; font-weight: 700; font-size: 45px; font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif">
			Our Story</p>
		<hr
			style="width: 5%; border-top: 2px solid #107eed; border-bottom: none; text-align: center;">


	</div>


	<section class="slider_section ">
		<div id="customCarousel1" class="carousel slide" data-ride="carousel">
			<div class="carousel-inner">
				<div class="carousel-item active">
					<div class="container ">
						<div class="row">
						<div class="col-md-6">
								<div class="img-box">
									<img src="./courseimg/aboutdetail.png" alt="">
								</div>
							</div>
							<div class="col-md-6">
								<div class="detail-box">

									<h1>
										Online Education <br>

									</h1>
									<p>
										As Education
						is Right for every Human being.It is necessary to make reach of
						education to each and every student wanting to study for Free
						without any discrimination of Color,Boundry,Wealth, etc. So, we
						tried to provide Free Online Education to students right in their
						Mobile,Laptops,Tablets etc..
									</p>

								</div>
							</div>
							
						</div>
					</div>
				</div>

			</div>

		</div>
	</section>


	<%@ include file="Footer.jsp"%>
</body>
</html>
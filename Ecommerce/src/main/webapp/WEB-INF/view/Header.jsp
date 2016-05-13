<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%-- <%@ page session="false" %> --%>
<%@page isELIgnored="false"%>

<html>
<head>
<title>HOME PAGE</title>
<meta name="viewport content=" width=device-width, initial-scale=1.0">
<!-- <link rel="stylesheet" href="resource/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="resource/bootstrap/css/bootstrap-theme.min.css"> -->

<link
	href="https://cdnjs.cloudflare.com/ajax/libsl/twitter-bootstrap/4.0.0-alpha/css/bootstrap.min.css"
	rel="stylesheet" />

<link
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0-alpha/css/bootstrap.css"
	rel="stylesheet" />

<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.3/angular.min.js"></script>


<style>
.navbar-default {
	background-color: #CC0000;
}

.navbar-default .navbar-brand, .navbar-default .navbar-brand:hover,
	.navbar-default .navbar-brand:focus {
	color: #FFF;
}

.navbar-default .navbar-nav>li>a {
	color: #FFF;
}

.navbar-default .navbar-nav>li>a:hover, .navbar-default .navbar-nav>li>a:focus
	{
	background-color: #AA0000;
}

.navbar-default .navbar-nav>.active>a, .navbar-default .navbar-nav>.active>a:hover,
	.navbar-default .navbar-nav>.active>a:focus {
	color: #FFF;
	background-color: #AA0000;
}

.navbar-default .navbar-text {
	color: #FFF;
}

.navbar-default .navbar-toggle {
	border-color: #AA0000;
}

.navbar-default .navbar-toggle:hover, .navbar-default .navbar-toggle:focus
	{
	background-color: #AA0000;
}

.navbar-default .navbar-toggle .icon-bar {
	background-color: #FFF;
}

.dropdown-submenu {
	position: relative;
}

.dropdown-submenu>.dropdown-menu {
	top: 0;
	left: 100%;
	margin-top: -6px;
	margin-left: -1px;
}

.dropdown-submenu:hover>.dropdown-menu {
	display: block;
}

.dropdown-submenu:hover>a:after {
	border-left-color: #fff;
}

.dropdown-submenu.pull-left {
	float: none;
}

.dropdown-submenu.pull-left>.dropdown-menu {
	left: -100%;
	margin-left: 10px;
}
/* .thumbnail {
  position: relative;
  width: 200px;
  height: 200px;
  overflow: hidden;
} */
<!--
footer-->.full {
	width: 100%;
}

.gap {
	height: 30px;
	width: 100%;
	clear: both;
	display: block;
}

.footer {
	background: #EDEFF1;
	height: auto;
	padding-bottom: 30px;
	position: relative;
	width: 100%;
	border-bottom: 1px solid #CCCCCC;
	border-top: 1px solid #DDDDDD;
}

.footer p {
	margin: 0;
}

.footer img {
	max-width: 100%;
}

.footer h3 {
	border-bottom: 1px solid #BAC1C8;
	color: #54697E;
	font-size: 18px;
	font-weight: 600;
	line-height: 27px;
	padding: 40px 0 10px;
	text-transform: uppercase;
}

.footer ul {
	font-size: 13px;
	list-style-type: none;
	margin-left: 0;
	padding-left: 0;
	margin-top: 15px;
	color: #7F8C8D;
}

.footer ul li a {
	padding: 0 0 5px 0;
	display: block;
}

.footer a {
	color: #78828D
}

.supportLi h4 {
	font-size: 20px;
	font-weight: lighter;
	line-height: normal;
	margin-bottom: 0 !important;
	padding-bottom: 0;
}

.newsletter-box input#appendedInputButton {
	background: #FFFFFF;
	display: inline-block;
	float: left;
	height: 30px;
	clear: both;
	width: 100%;
}

.newsletter-box .btn {
	border: medium none;
	-webkit-border-radius: 3px;
	-moz-border-radius: 3px;
	-o-border-radius: 3px;
	-ms-border-radius: 3px;
	border-radius: 3px;
	display: inline-block;
	height: 40px;
	padding: 0;
	width: 100%;
	color: #fff;
}

.newsletter-box {
	overflow: hidden;
}

.bg-gray {
	background-image: -moz-linear-gradient(center bottom, #BBBBBB 0%, #F0F0F0 100%);
	box-shadow: 0 1px 0 #B4B3B3;
}

.social li {
	background: none repeat scroll 0 0 #B5B5B5;
	border: 2px solid #B5B5B5;
	-webkit-border-radius: 50%;
	-moz-border-radius: 50%;
	-o-border-radius: 50%;
	-ms-border-radius: 50%;
	border-radius: 50%;
	float: left;
	height: 36px;
	line-height: 36px;
	margin: 0 8px 0 0;
	padding: 0;
	text-align: center;
	width: 36px;
	transition: all 0.5s ease 0s;
	-moz-transition: all 0.5s ease 0s;
	-webkit-transition: all 0.5s ease 0s;
	-ms-transition: all 0.5s ease 0s;
	-o-transition: all 0.5s ease 0s;
}

.social li:hover {
	transform: scale(1.15) rotate(360deg);
	-webkit-transform: scale(1.1) rotate(360deg);
	-moz-transform: scale(1.1) rotate(360deg);
	-ms-transform: scale(1.1) rotate(360deg);
	-o-transform: scale(1.1) rotate(360deg);
}

.social li a {
	color: #EDEFF1;
}

.social li:hover {
	border: 2px solid #2c3e50;
	background: #2c3e50;
}

.social li a i {
	font-size: 16px;
	margin: 0 0 0 5px;
	color: #EDEFF1 !important;
}

.footer-bottom {
	background: #E3E3E3;
	border-top: 1px solid #DDDDDD;
	padding-top: 10px;
	padding-bottom: 10px;
}

.footer-bottom p.pull-left {
	padding-top: 6px;
}

.payments {
	font-size: 1.5em;
}
</style>

</head>
<body>
	<!-- <script src = "https://ajax.googleapis.com/ajax/libs/angularjs/1.3.3/angular.min.js"></script> -->


	<nav class="navbar navbar-default" role="navigation">
		<div class="navbar navbar-inverse navbar-static-top">

			<div class="container">
				<a href="#" class="navbar-brand"><b><i>Just 5 Min</i></b></a>
				<button class="navbar-toggle" data-toggle="collapse"
					data-target=".navHeaderCollapse">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<div class="collapse navbar-collapse navHeaderCollapse">

					<ul class="nav navbar-nav navbar-left">
						<li class="active"><a
							href="${session.getContextPath()}/Ecommerce/index">HOME</a></li>
						<!-- <li><a href="contact">CONTACT US</a></li> 
<li><a href="register">Sign Up</a></li> 
<li><a href="login">Sign In</a></li> 		 -->
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-expanded="false"><B>MAKEUP</B>
								<span class="caret"></span></a>
							<ul class="dropdown-menu" role="menu">

								<%-- start submenu  --%>
								<li class="dropdown-submenu"><a tabindex="-1"
									href="${session.getContextPath()}/Ecommerce/product/face">Eyes
										<i class="fa fa-chevron-left"></i>
								</a>
									<ul class="dropdown-menu">
										<li><a tabindex="-1"
											href="${session.getContextPath()}/Ecommerce/product/Eye">Eye
												Shadow</a></li>
										<li><a
											href="${session.getContextPath()}/Ecommerce/product/Eye">Kajal</a></li>
										<li><a
											href="${session.getContextPath()}/Ecommerce/product/Eye">Masscara</a></li>
									</ul></li>
								<%--end sub menu --%>

								<%-- start submenu  --%>
								<li class="dropdown-submenu"><a tabindex="-1" href="#">Lips
										<i class="fa fa-chevron-left"></i>
								</a>
									<ul class="dropdown-menu">

										<li><a tabindex="-1" href="#">Lipstick</a></li>
										<li><a href="#">Lipgloss</a></li>
										<li><a href="#">Liplinear</a></li>
									</ul></li>
								<%--end sub menu --%>



								<%-- start submenu  --%>
								<li class="dropdown-submenu"><a tabindex="-1" href="#">Nails
										<i class="fa fa-chevron-left"></i>
								</a>
									<ul class="dropdown-menu">
										<li><a tabindex="-1" href="#">Nailpaint</a></li>
										<li><a href="#">NailArt</a></li>
										<li><a href="#">Manicure & Pedicure Kits</a></li>
									</ul></li>
								<%--end sub menu --%>


							</ul> <%--End DropDown Menu --%></li>
						<!--End  .dropdown -->
						<li><a href="contact">CONTACT US</a></li>
						<li><a href="register">Sign Up</a></li>
						<li><a href="login">Sign In</a></li>

					</ul>
					<!-- .nav .navbar-nav -->
				</div>
				<!-- /.navbar-collapse -->
			</div>

		</div>
		<!-- /.container-fluid -->
	</nav>
</body>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<!-- <script src="resource/bootstrap/js/bootstrap.min.js"></script> -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0-alpha/js/bootstrap.min.js"></script>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>
<%@page isELIgnored="false" %>




<html>
<head>
<title>HOME PAGE</title>
<meta name="viewport content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="resource/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="resource/bootstrap/css/bootstrap-theme.min.css">
<script src="resource/bootstrap/js/angular.min.js"></script>


<style>

.navbar-default {
    background-color: #CC0000;
   
   
}

.navbar-default .navbar-brand,
.navbar-default .navbar-brand:hover,
.navbar-default .navbar-brand:focus {
    color: #FFF;
}

.navbar-default .navbar-nav > li > a {
    color: #FFF;
}

.navbar-default .navbar-nav > li > a:hover,
.navbar-default .navbar-nav > li > a:focus {
    background-color: #AA0000;
}

.navbar-default .navbar-nav > .active > a,
.navbar-default .navbar-nav > .active > a:hover,
.navbar-default .navbar-nav > .active > a:focus {
    color: #FFF;
    background-color: #AA0000;
}

.navbar-default .navbar-text {
    color: #FFF;
}

.navbar-default .navbar-toggle {
    border-color: #AA0000;
}

.navbar-default .navbar-toggle:hover,
.navbar-default .navbar-toggle:focus {
    background-color: #AA0000;
}

.navbar-default .navbar-toggle .icon-bar {
    background-color: #FFF;
}

.dropdown-submenu {
  position: relative;
}
.dropdown-submenu > .dropdown-menu {
  top: 0;
  left: 100%;
  margin-top: -6px;
  margin-left: -1px;
}
.dropdown-submenu:hover > .dropdown-menu {
  display: block;
}
.dropdown-submenu:hover > a:after {
  border-left-color: #fff;
}
.dropdown-submenu.pull-left {
  float: none;
}
.dropdown-submenu.pull-left > .dropdown-menu {
  left: -100%;
  margin-left: 10px;
}
img {
   padding:1px;
   border:1px solid #021a40;
   background-color:#ff0;
}
.thumbnail {
  position: relative;
  width: 200px;
  height: 200px;
  overflow: hidden;
}

</style>

</head>
<body>


<nav class="navbar navbar-default" role="navigation">
  <div  class="navbar navbar-inverse navbar-static-top" >
    
<div  class="container">
<a href="#" class="navbar-brand"><b>Just 5 Min</b></a>
<button class="navbar-toggle" data-toggle="collapse" data-target=".navHeaderCollapse">
<span class="icon-bar"></span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>
</button>
<div class="collapse navbar-collapse navHeaderCollapse">

<ul class="nav navbar-nav navbar-right">
<li class="active"><a href="#">HOME</a></li>
<li><a href="#">CONTACT US</a></li> 
<li><a href="register">Sign Up</a></li> 
<li><a href="login">Sign In</a></li> 		    
		    <li class="dropdown">
			   <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><B>MAKEUP</B> <span class="caret"></span></a>
			  <ul class="dropdown-menu" role="menu">				          
			    
			    <li class="dropdown-submenu">
			        <a tabindex="-1" href="#">Face <i class="fa fa-chevron-right"></i></a>
			        <ul class="dropdown-menu">
			          <li><a tabindex="-1" href="productdetails1">Concealer</a></li>			                  
			          <li><a href="#">compact</a></li>
			          <li><a href="#">Blush</a></li>
			        </ul>
			    </li>	
			    
			    <li class="dropdown-submenu">
			        <a tabindex="-1" href="#">Lips <i class="fa fa-chevron-right"></i></a>
			        <ul class="dropdown-menu">
			          <li><a tabindex="-1" href="#">Lipstick</a></li>			                  
			          <li><a href="#">Lipgloss</a></li>
			          <li><a href="#">Liplinear</a></li>
			        </ul>
			    </li>	
			    
			    
			    
			    <li class="dropdown-submenu">
			        <a tabindex="-1" href="#">Nails <i class="fa fa-chevron-right"></i></a>
			        <ul class="dropdown-menu">
			          <li><a tabindex="-1" href="#">Nailpaint</a></li>			                  
			          <li><a href="#">NailArt</a></li>
			          <li><a href="#">Manicure & Pedicure Kits</a></li>
			        </ul>
			    </li>	
			    		            
			  
			  </ul>
			</li> <!-- .dropdown -->						
		  </ul> <!-- .nav .navbar-nav -->		 
		</div><!-- /.navbar-collapse -->
		
	</div><!-- /.container-fluid -->
</nav>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
 <script src="resource/bootstrap/js/bootstrap.min.js"></script>

 
</body>
</html>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>
<%@page isELIgnored="false" %>

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>User Home Page</title>
		<link href="style.css" rel="stylesheet" type="text/css" />
	</head>
	<body>
		<div class="content">
			<fieldset>
				<legend>Navigation menu</legend>
				<a href="index.jsp">Home</a>
				<br /><br />
				<h2>User page</h2>
				<br/>
				<!-- display the userId just logged in -->
				Welcome ${userForm.username }
			</fieldset>
		</div>
	</body>
</html>
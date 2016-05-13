<%-- <%@taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Spring Mvc WebFlow Demo</title>
		<link href="style.css" rel="stylesheet" type="text/css" />
	</head>
 
	<body>
		<div class="content">
			<fieldset>
				<legend>Confirm Details</legend>
				<!-- for triggering webflow events using links,
					 the eventId to be triggered is given in "href" attribute as:
				 -->
				<a href="index">home</a><br /><br />
				<sf:form modelAttribute="product">
					<sf:label path="name">UserName:</sf:label>${product.name}
					<br /><br />
					<sf:label path="brand">Brand</sf:label>${product.brand}
					<br /><br />
					
					<!-- for triggering webflow events using form submission,
					 the eventId to be triggered is given in "name" attribute as:
					-->
					
					<input name="_eventId_submit" type="submit" value="Shipping Details" /><br />
				</sf:form>
			</fieldset>
		</div>
	</body>
</html> --%>

<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
	
	 <%@include file="Header.jsp" %>
	 <div class="container">
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">
				<sf:form modelAttribute="product" method="post">


					<table class="table table-striped">
						<thead>
							<tr>

								<th>Name</th>
								<th>Brand</th>
								<th>Description</th>
								<th>Price</th>
								<th>Color</th>
								
							</tr>
						</thead>

						<tbody>


							<tr>
								<td>${product.name}</td>
								<td>${product.brand}</td>
								<td>${product.desc}</td>
								<td>${product.price}</td>
								<td>${product.color}
							</tr>

						</tbody>

					</table>
					<div class="row">
						<div class="col-md-4"></div>
						<div class="col-md-4"></div>
						<div class="col-md-4">
							<input class="btn btn-info" name="_eventId_submit" type="submit"
								value="Next" />
						</div>
					</div>
					<br />

				</sf:form>

			</div>
		</div>
		
		 
		






























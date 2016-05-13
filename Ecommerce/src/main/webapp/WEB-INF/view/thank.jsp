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
				<legend>thank you</legend>
				<!-- for triggering webflow events using links,
					 the eventId to be triggered is given in "href" attribute as:
				 -->
				<a href="${flowExecutionUrl}&_eventId_home">Home</a><br /><br />
				<sf:form modelAttribute="product">
					<sf:label path="name">UserName:</sf:label>${product.name}
					<br /><br />
					<sf:label path="brand">Brand</sf:label>${product.brand}
					<br /><br />
					
					<!-- for triggering webflow events using form submission,
					 the eventId to be triggered is given in "name" attribute as:
					-->
					
					<input name="_eventId_submit" type="submit" value="Thankyou" /><br />
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


				
					<div class="row">
						<div class="col-md-4"></div>
						<div class="col-md-4">THANK YOU  </div>
						<div class="col-md-4">
							<input class="btn btn-info" name="_eventId_submit" type="submit"
								value="BACK TO HOME PAGE" />
						</div>
					</div>
					<br />

				</sf:form>

			</div>
		</div>
		
		 
		





















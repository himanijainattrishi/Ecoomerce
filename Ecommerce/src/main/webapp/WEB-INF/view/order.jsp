
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
	
	 <%@include file="Header.jsp" %>
	<%--  <div class="content">
			<fieldset>
				<legend><b>Your Order</b>/</legend>
				
				 <a href="index">home</a><br /><br />
				<sf:form modelAttribute="product">
				
				<sf:label path="name">UserName:</sf:label>${product.name}
					<br /><br />
					<sf:label path="brand">Brand</sf:label>${product.brand}
					<br /><br />
			
					
					<input name="_eventId_submit" type="submit" value="Confirm Details" /><br />
				</sf:form>
			</fieldset>
		</div> --%>
		<br>
		<br>
		<br>
		<div class="container">
		<div class="row">
		<div class="col-md-4"></div>
		<div clss="col-md-5">ORDER DETAILS</div>
		<div class="col-md-13"></div>
		</div>
		</div>
		<div class="container">
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">
				<sf:form modelAttribute="product" method="post">


					<table class="table table-striped">
						<thead>
							<tr>
<th>ID</th>
								<th>Name</th>
								<th>Brand</th>
								<th>Description</th>
								
								
							</tr>
						</thead>

						<tbody>


							<tr>
							<td>${product.id}</td>
								<td>${product.name}</td>
								<td>${product.brand}</td>
								<td>${product.desc}</td>
								
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
		
		 
		
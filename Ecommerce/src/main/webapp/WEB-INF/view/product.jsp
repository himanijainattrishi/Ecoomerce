
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
<script src = "https://ajax.googleapis.com/ajax/libs/angularjs/1.3.3/angular.min.js"></script>
  
 <script> 
var prod;
var app=angular.module("searchApp",[]).controller("TableCtrl",function($scope)
                    {
            
             $scope.prod=${access};
                    });

</script>
<body>

	<div  ng-app="searchApp">
	<div ng-controller="TableCtrl">
 	<table>
 	<thead>
 	<th>Name</th>
 	<th>Brand</th>
 	<th>Price</th>
 	<th>Category</th>
 	<th>color</th>
 
 	</thead>
 		<tbody>
 	
    
   <tr  ng-repeat="p in prod">
 
    <td>{{ p.name }}</td>
    <td>{{p.brand}}</td>
    <td>{{p.price|currency}}</td>
    <td>{{p.categ}}</td>
      <td>{{p.color}}</td>
     <td>
       
   
    <form action="productDetails" method="post">
   <input type="hidden" value={{p.id}} name="id"/>
       <input type="hidden" value={{p.name}} name="name"/>
       <input type="hidden" value={{p.brand}} name="brand"/>
      <input type="hidden" value={{p.desc}} name="desc"/>
        <input type="submit" value="click"></form></td>

     
    </tr>   
</tbody>         
       
    </table>
    
    
    
   
</div>


</div> 



 



<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="resource/bootstrap/js/bootstrap.min.js"></script>



</body>

</html>

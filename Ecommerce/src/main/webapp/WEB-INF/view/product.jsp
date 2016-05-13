<%@include file="Header.jsp"%>


<!-- <meta name="viewport content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="resource/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="resource/bootstrap/css/bootstrap-theme.min.css">
 -->
<script src = "https://ajax.googleapis.com/ajax/libs/angularjs/1.3.3/angular.min.js"></script>
   
<link href="https://cdnjs.cloudflare.com/ajax/libsl/twitter-bootstrap/4.0.0-alpha/css/bootstrap.min.css" rel="stylesheet"/>

<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0-alpha/css/bootstrap.css" rel="stylesheet"/>  
  <script> 
var prod;
var app=angular.module("searchApp",[]).controller("TableCtrl",function($scope)
                    {
            
             $scope.prod=${access};
                    });

</script> 
</head>
<body>

 
	 <div  ng-app="searchApp">
	 	
	<div ng-controller="TableCtrl">
 	<table class ="table table-bordered">
 	<thead>
 	<tr>
 	<th>Id</th>
 	<th>Name</th>
 	<th>Brand</th>
 	<th>Price</th>
 	<th>color</th>
 	<th>Category</th>
 </tr>
 	</thead>
 		<tbody>
 	<
    
   <tr  ng-repeat="p in prod">
 <td>{{ p.id }}</td>
    <td>{{ p.name }}</td>
    <td>{{p.brand}}</td>
    <td>{{p.price|currency}}</td>
   
      <td>{{p.color}}</td>
       <td>{{p.categ}}</td>
     <td>
       
   
    <form action="${session.getContextPath()}/Ecommerce/productDetails" method="post">
   <input type="hidden" value={{p.id}} name="id"/>
       <input type="hidden" value={{p.name}} name="name"/>
       <input type="hidden" value={{p.brand}} name="brand"/>
      <input type="hidden" value={{p.desc}} name="desc"/>
        <input type="submit" value="MoreDetails"></form></td>

     
    </tr>   
</tbody>         
       
    </table></div>
</div> 
hdh
<%@include file="Footer.jsp" %>
 
<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <style type="text/css">
        .tg  {border-collapse:collapse;border-spacing:0;border-color:#ccc;}
        .tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#fff;}
        .tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#f0f0f0;}
        .tg .tg-4eph{background-color:#f9f9f9}
    </style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>--%>
<%@include file="Header.jsp" %>

<div class="container">
<div class="row">
<div class="col-sm-4"></div>
<div class="col-sm-8">

<h1>

    Add a Product
</h1>
<c:url var="addAction" value="/admin/add" ></c:url>
<form:form action="${addAction}" commandName="product" modelAttribute="product" enctype="multipart/form-data" method="post">
<table>
    <c:if test="${!empty product.name}">
    
    <tr>
        <td>
            <form:label path="id">
                <spring:message text="ID"/>
            </form:label>
        </td>
        <td>
            <form:input path="id" readonly="true" size="8"  disabled="true" />
            <form:hidden path="id" />
        </td> 
    </tr>
    </c:if>
     <tr>
        <td>
            <form:label path="name">
                <spring:message text="Name"/>
            </form:label>
        </td>
        <td>
            <form:input path="name" /><form:errors path="name" cssStyle="color:#00ff00;"/>
        </td> 
    </tr>
    <tr>
        <td>
            <form:label path="brand">
                <spring:message text="brand"/>
            </form:label>
        </td>
        <td>
            <form:input path="brand" />
        </td> 
    </tr>
    <tr>
        <td>
            <form:label path="price">
                <spring:message text="price"/>
            </form:label>
        </td>
        <td>
            <form:input path="price" />
        </td>
    </tr>
   
 <%--   </tr>--%>
     <tr>
        <td>
            <form:label path="color">
                <spring:message text="color"/>
            </form:label>
        </td>
        <td>
            <form:input path="color" />
        </td>
    </tr>
    
    <tr>
        <td>
            <form:label path="desc">
                <spring:message text="desc"/>
            </form:label>
        </td>
        <td>
            <form:input path="desc" />
        </td>
        
    </tr>
     <tr>
        <td>
            <form:label path="image">
                <spring:message text="Photo to upload"/>
            </form:label>
        </td>
        <td>
            <form:input type="file" path="image" />
        </td>
        
    </tr>
    
    
    
     
       
 <%--   </tr>--%>
    <tr>
        <td colspan="2">
            <c:if test="${!empty product.name}">
                <input type="submit"
                    value="<spring:message text="Edit Product"/>" />
            </c:if>
            <c:if test="${empty product.name}">
                <input type="submit"
                    value="<spring:message text="Add Product"/>" />
         </c:if>
        </td>
    </tr>
    
</table>  
</form:form>
<br>
<h3>Product List</h3>


<c:if test="${!empty listproducts}"> 
<div class="table-responsive"> 
    <table class="table table-bordered">
   <%--  <table class="tg">--%>
    <thead>
    <tr>
        <th width="80">ID</th>
       
       
      
       <th width="120">Brand</th>
       <th width="120">Name</th>
        <th width="120">Price</th>
      <th width="120">color</th>
        <th width="120">Desc</th>
        <th width="60">edit</th>
        <th width="60">Delete</th>
    </tr>
    </thead>
    <c:forEach items="${listproducts}" var="product">
    <tbody>
        <tr>
            <td>${product.id}</td>
          
           
         
            <td>${product.brand}</td>
                 <td>${product.name}</td>
              <td>${product.price}</td>
             <td>${product.color}</td>
             <td>${product.desc}</td>
            
            <td><a href="<c:url value='/edit/${product.id}'/>" >Edit</a></td>
            <td><a href="<c:url value='/remove/${product.id}'/>" >Delete</a></td>
            
        </tr>
        </tbody>
    </c:forEach>
    </table>
 </c:if>  
 </div>
 
 </div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.2/jquery.min.js"></script>
 <script src="resource/bootstrap/js/bootstrap.min.js"></script>
</body>

  
</html>
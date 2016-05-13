<%@include file="Header.jsp"%>
<div id="carousel-example-generic" class="carousel slide" data-ride="carousel" data-interval="2000">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
  </ol>
 
  <!-- Wrapper for slides -->
  <div class="carousel-inner">
    <div class="item active">
<a href="product"><img src="resource/images/image10.jpg" alt="..."></a>
    
    </div>
    <div class="item">
 <a href="product"><img src="resource/images/image11.jpg" alt="..."></a>
     
    </div>
    <div class="item">
 <a href="product"><img src="resource/images/image12.jpg" alt="..."></a>
     
    </div>
  </div>
 
  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
  </a>

<%--images thumbnail start --%>

<div class="row"><%--div Row start --%>
 <div class="col-md-4"><%--div col start --%>
  
    <a href="${session.getContextPath()}/Ecommerce/product/Eye" class="thumbnail">
      <p>EYES MAKEUP INSPRIAION SIGNATURE LOOKS SIMPLIFIED</p>
      <img src="resource/images/eyelinear1.jpg" alt="Pulpit Rock" style="width:150px;height:150px">
    </a>
  </div><%--div Col end --%>
  
 <%--div col start --%>
  <div class="col-md-4">
    <a href="${session.getContextPath()}/Ecommerce/product/Lips" class="thumbnail">
      <p>TIMELESS MATTES AND GLOSSES ENDLESS SHADES TO FALL IN LOVE WITH</p>
      <img src="resource/images/lips.jpg" alt="Moustiers Sainte Marie" style="width:150px;height:150px">
    </a>
  </div><%--div end --%>
  
  <%--div col start --%>
  <div class="col-md-4">
    <a href="${session.getContextPath()}/Ecommerce/product/Lips" class="thumbnail">
      <p>cOMPACT FINAL TOUCH TIPS</p>
      <img src="resource/images/face1.jpg" alt="Cinque Terre" style="width:150px;height:150px">
    </a>
  </div><%--div col end --%>
  
</div><%--div Row end --%>
<div class="row">
<div class=col-sm-12">
<a href="product"><img src="resource/images/sale.jpg"></a></div></div>

<!-- </div> -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
 <script src="resource/bootstrap/js/bootstrap.min.js"></script>

<%@include file="Footer.jsp" %>
  
 

  


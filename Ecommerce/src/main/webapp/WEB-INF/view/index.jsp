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
<a href="productdetails1"><img src="resource/images/image10.jpg" alt="..."></a>
    
    </div>
    <div class="item">
 <a href="page1"><img src="resource/images/image11.jpg" alt="..."></a>
     
    </div>
    <div class="item">
 <a href="page1"><img src="resource/images/image12.jpg" alt="..."></a>
     
    </div>
  </div>
 
  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
  </a>


<div class="row">
  <div class="col-md-4">
  
    <a href="Product/eyes" class="thumbnail">
      <p></p>
      <img src="resource/images/eyelinear1.jpg" alt="Pulpit Rock" style="width:150px;height:150px">
    </a>
  </div>
  <div class="col-md-4">
    <a href="Product/lips" class="thumbnail">
      <p>Moustiers-Sainte-Marie: Considered as one of the "most beautiful villages of France".</p>
      <img src="resource/images/lips.jpg" alt="Moustiers Sainte Marie" style="width:150px;height:150px">
    </a>
  </div>
  <div class="col-md-4">
    <a href="Product/face" class="thumbnail">
      <p>The Cinque Terre: A rugged portion of coast in the Liguria region of Italy.</p>
      <img src="resource/images/face1.jpg" alt="Cinque Terre" style="width:150px;height:150px">
    </a>
  </div>
</div>



<%@include file="/WEB-INF/view/Footer.jsp" %>
  
 

  


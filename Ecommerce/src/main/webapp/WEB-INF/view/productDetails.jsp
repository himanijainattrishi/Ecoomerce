
<%@include file="Header.jsp" %>
 <br><br>
<br><br>
<div class="container" id="product-section">


  <div class="row">
   <div class="col-md-6">
    <img src="resource/${product.id}.jpg" class="image-responsive" height="400" width="400"/>
  
   </div>
   <div class="col-md-6">
   <div class="row">
   <div class="col-md-12">
   <h1>${p.name}</h1>
   </div>
   </div>
   
   
   <div class="row">
 <div class="col-md-12">
  <span class="label label-primary">Vintage</span>
  <span class="monospaced">No. 1960140180</span>
 </div>
</div>


<div class="row">
 <div class="col-md-12">
  <p class="description">
  ${product.desc}
  </p>
 </div>
</div>


<div class="row">
 <div class="col-md-3">
  <span class="sr-only">Four out of Five Stars</span>
  <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
  <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
  <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
  <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
  <span class="glyphicon glyphicon-star-empty" aria-hidden="true"></span>
  <span class="label label-success">61</span>
 </div>
 <div class="col-md-3">
  <span class="monospaced">Write a Review</span>
 </div>
</div>
   
<div class="row">
 <div class="col-md-12 bottom-rule">
  <h2 class="product-price">${product.price}</h2>
 </div>
</div>

<div class="row add-to-cart">
 <div class="col-md-3 product-qty">
  <span class="btn btn-default btn-lg btn-qty">
   <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>
  </span>
 
 </div>

 <!-- <div class="col-md-9">
  <button class="btn btn-lg btn-brand btn-full-width">
   Add to Cart
   
  </button> -->
  <a href="${request.getContextPath()}/Ecommerce/order">add to cart</a>
 </div>
</div><!-- end row -->

<div class="row">
 <div class="col-md-4 text-center">
  <span class="monospaced">In Stock</span>
 </div>
 <div class="col-md-4 col-md-offset-1 text-center">
  <a class="monospaced" href="index">Add to Shopping List</a>
 </div>
</div><!-- end row -->
<div class="row">
 <div class="col-md-12 bottom-rule top-10"></div>
</div><!-- end row -->

<div class="row">
 <div class="col-md-12 top-10">
  <p>To order by telephone, <a href="tel:18005551212">please call 1-800-555-1212</a></p>
 </div>
</div>

<div class="row">
 <div class="col-md-4 text-center">
  <span class="monospaced">In Stock</span>
 </div>
 <div class="col-md-4 col-md-offset-1 text-center">
  <a class="monospaced" href="#">Add to Shopping List</a>
 </div>
</div>
</div>
</div>
</div>
<%-- <img src="resource/images/${product.id}.jpg" height="150" width="150"/>

${p.id}--%>

<%@include file="Footer.jsp" %>​

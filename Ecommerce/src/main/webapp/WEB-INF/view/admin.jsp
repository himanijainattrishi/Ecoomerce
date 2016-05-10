


 





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
<body>



<h1>

    Add a Product
</h1>

<form id="product" action="/Ecommerce/admin/add" method="post">
<table>
    
     <tr>
        <td>
            <label for="name">
                Name
            </label>
        </td>
        <td>
            <input id="name" name="name" type="text" value=""/>
        </td> 
    </tr>
    <tr>
        <td>
            <label for="brand">
                brand
            </label>
        </td>
        <td>
            <input id="brand" name="brand" type="text" value=""/>
        </td> 
    </tr>
    <tr>
        <td>
            <label for="price">
                price
            </label>
        </td>
        <td>
            <input id="price" name="price" type="text" value="0"/>
        </td>
    </tr>
   
 
     <tr>
        <td>
            <label for="color">
                color
            </label>
        </td>
        <td>
            <input id="color" name="color" type="text" value=""/>
        </td>
    </tr>
    
     <tr>
        <td>
            <label for="categ">
                categ
            </label>
        </td>
        <td>
            <input id="categ" name="categ" type="text" value=""/>
        </td>
    </tr>
    
    
    
    
    
    <tr>
        <td>
            <label for="desc">
                desc
            </label>
        </td>
        <td>
            <input id="desc" name="desc" type="text" value=""/>
        </td>
    </tr>
    
    
     
       
 
    <tr>
        <td colspan="2">
            
            
                <input type="submit"
                    value="Add Product" />
         
        </td>
    </tr>
    
</table>  
</form>
<br>
<h3>Product List</h3>


 

    <table class="tg">
    <tr>
        <th width="80">ID</th>
       
       
      
       <th width="120">Brand</th>
       <th width="120">Name</th>
        <th width="120">Price</th>
      <th width="120">color</th>
       <th width="120">Category</th>
        <th width="120">Desc</th>
        <th width="60">edit</th>
        <th width="60">Delete</th>
    </tr>
    
        <tr>
            <td>38</td>
          
           
         
            <td>colorbar</td>
                 <td>eyelinear</td>
              <td>800</td>
             <td>black</td>
             
              <td>eye</td>
              <td>good</td>
            
            <td><a href="/Ecommerce/edit/38" >Edit</a></td>
            <td><a href="/Ecommerce/remove/38" >Delete</a></td>
            
        </tr>
    
        <tr>
            <td>39</td>
          
           
         
            <td>lakme</td>
                 <td>lipstick</td>
              <td>900</td>
             <td>red</td>
             
              <td>lips</td>
              <td>chip</td>
            
            <td><a href="/Ecommerce/edit/39" >Edit</a></td>
            <td><a href="/Ecommerce/remove/39" >Delete</a></td>
            
        </tr>
    
        <tr>
            <td>40</td>
          
           
         
            <td>lakme</td>
                 <td>sunlotion</td>
              <td>1000</td>
             <td>skin</td>
             
              <td>face</td>
              <td>good</td>
            
            <td><a href="/Ecommerce/edit/40" >Edit</a></td>
            <td><a href="/Ecommerce/remove/40" >Delete</a></td>
            
        </tr>
    
    </table>
   
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
 <script src="resource/bootstrap/js/bootstrap.min.js"></script>
</body>

  
</html>
 <%@include file="Header.jsp"%>
 
 <div align="center">
        <form:form action="useradd" method="post" commandName="user">
            <table border="0">
                <tr>
                    <td colspan="2" align="center"><h2>Registration</h2></td>
                </tr>
               <tr>
                <td>
                 <tr>
                    <td>Username</td>
                    <td><form:input path="username" /></td>
                </tr>
       
          
        </td> 
   
                <tr>
                    <td>Password:</td>
                    <td><form:password path="password" /></td>
                </tr>
                
                <tr>
                    <td>E-mail:</td>
                    <td><form:input path="email" /></td>
                </tr>
               
                <tr>
                    <td>Gender:</td>
                <td>  <form:radiobutton path="gender" value="M"/>Male 
                   <form:radiobutton path="gender" value="F"/>Female</td></tr>
                <tr>
                    <td colspan="2" align="center"><input type="submit" value="Register" /></td>
                </tr>
            </table>
        </form:form>
        
        
        
      
    </div>
  
  
  
  
 
 
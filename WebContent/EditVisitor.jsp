<%@page import="com.accenture.adf.businesstier.entity.People"%>
 <%@page import="com.accenture.adf.businesstier.entity.Visitor"%>
 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
     pageEncoding="ISO-8859-1"%>
 <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 <html>
 <head>
 <style>
body {
        background-image: url("images/bg2.jpg");
       
    background-size: 1500px 900px;
    background-repeat: no-repeat;
} 
 
</style>
 <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <script type="text/javascript">
 
 var nHist=window.history.length;
 if(window.history[nHist]!=window.location)
	 window.history.forward();
 	
 </script>
 <script>
function validateRegister(){
   
    	document.getElementById('error').innerHTML='Name must only include alphabet characters';
       
     }
     function validatePhone(){
       
    	 document.getElementById('phone_error').innerHTML='phone no. should contain 10 digits';     
}
</script>
 <title>Update Details</title>
 <h3> Update your details</h3><br>
 </head>
 <body>
 
<table border="2" cellpadding="10"  color="green" width="1340">
<tr bgcolor="#004b66"><td align="center"><h2><a href="searchVisitor.htm">Festival Registration System</a></h2></td>
 <td>
     <a href="logout.htm">Logout</a>
     </td>
      <td>
     <a href="about.jsp">About</a>
     </td>
     <td>
     <a href="catalog.htm">Events</a>
     </td>
</tr>
</table>
</CENTER>
<br><br>
 <center>
 <form action = "updatevisitor.htm">
 <% Visitor visitor = (Visitor)request.getAttribute("visitor");

%>
 <table bgcolor = lightblue border="1" width="1350">

   <tr> 
     <th><h3>Update</h3></th>
    </tr>
    <tr>
     <td>Visitor Id <input type="hidden" name="userID" 
     value ="<%=request.getParameter("visitorId")%>"/> <%=request.getParameter("visitorId")%>
     </td>
    </tr>
   <tr>
     <td>Username <input type="text" name="username" value ="<%=request.getParameter("userName")%>" pattern="[a-zA-Z\-]+" required  oninvalid="validateRegister()"> </td>
     <span  id="error" style="color:red;"></span>
    </tr>
    <tr>
     <td>First name <input type="text" name="firstname" value ="<%=request.getParameter("firstName")%>" pattern="[a-zA-Z\-]+" required  oninvalid="validateRegister()"> </td>
      <span  id="error" style="color:red;"></span>
    </tr>
    </tr>
    <tr>
     <td>Last name <input type="text" name="lastname" value = " <%=request.getParameter("lastName")%>" pattern="[a-zA-Z\-]+" required  oninvalid="validateRegister()"> </td>
      <span  id="error" style="color:red;"></span>
    </tr>
    <tr>
     <td>e-mail Id <input type="email" name="email" value ="<%=request.getParameter("email")%>"> </td>
    </tr>
    
    <tr>
     <td>Contact <input type="text" name="phoneno" value ="<%= request.getParameter("phoneNumber")%>" pattern="[1-9]{1}[0-9]{9}" required  oninvalid="validatePhone()"> </td>
     <span  id="phone_error" style="color:red;"></span>
    </tr>
    <tr>
     <td>Address <input type="text" name="address" value ="<%=request.getParameter("address")%>"> </td>
    </tr>

   <tr> <td> <center><input type = "submit" value = "Update" ></td></center> 
     </tr>

  </table>
   
 </form>
 </center>
 </body>
 </html>

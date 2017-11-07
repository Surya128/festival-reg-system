<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- <style>
body {
        background-image: url("images/college-fest-1050x591.jpg");
} 
 
</style> -->
<script>
function validateRegister(){
   
    	document.getElementById('error').innerHTML='Name must only include alphabet characters';
       
     }
     function validatePhone(){
       
    	 document.getElementById('phone_error').innerHTML='phone no. should contain 10 digits';     
}
</script>
<script type="text/javascript">
 
 var nHist=window.history.length;
 if(window.history[nHist]!=window.location)
	 window.history.forward();
 
 </script>
<title>Registration</title>
</head>
<body>
<table border="2" cellpadding="10"  color="green" width="1340">
    <tr bgcolor="#004b66">
     <td>
      <h2>
       <center><font text color = "white">>Festival Registration System</font></center>
      </h2>
     </td>
     </tr>
</table>
<h3 align="center"><font text color = "white">Register your details here!</font></h3>
<form name="myform" action="newVistor.htm" >
<br>
<br>

<br>
 <center>
<table border="1">
<tr>
<td>
	UserName: <input type="text" id="username" name="USERNAME" placeholder="Username" pattern="[a-zA-Z\-]+" required  oninvalid="validateRegister()" >
</td>
<span  id="error" style="color:red;"></span>
</tr>

<tr>
<td>
	Password: <input type="password" id="password" name="PASSWORD" placeholder="password" required/>
</td>
</tr>


<tr>
<td>
	FirstName: <input type="text" id="firstname" name="FIRSTNAME" pattern="[a-zA-Z\-]+" placeholder="FirstName" required oninvalid="validateRegister()" />
</td>
</tr>

<tr>
<td>
	LastName: <input type="text" id="lastname" name="LASTNAME" pattern="[a-zA-Z\-]+"  placeholder="LastName" required/>
</td>
</tr>

<tr>
<td>
	Email: <input type="email" id="email" name="EMAIL" placeholder="Email" required/>
</td>
</tr>

<tr>
<td>
	Phone No. <input type="text" id="phonenumber" name="PHONENO" pattern="[1-9]{1}[0-9]{9}" required  oninvalid="validatePhone()"  />
	
</td>
<span  id="phone_error" style="color:red;"></span>
</tr>

<tr>
<td>
	Place: <input type="text" id="place" name="PLACE" placeholder="Place" required/>
</td>
</tr>

<tr colspan="2">
<td><input type="submit" value="Register"/></td>

</tr>

</table>
</center>
</form>
</body>
</html>
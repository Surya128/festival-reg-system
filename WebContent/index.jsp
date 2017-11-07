<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<%@include file="header.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 
<html>
 
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
body {
        background-image: url("images/bg2.jpg");
       
    background-size: 1500px 900px;
    background-repeat: no-repeat;
} 
 
</style>
 <title>Login</title>
 <script type="text/javascript">
 
 var nHist=window.history.length;
 if(window.history[nHist]!=window.location)
	 window.history.forward();
 	
 </script>
<script type="text/javascript">
function validateForm()
{
	var uname=document.myform.USERNAME.value;
	var password=document.myform.PASSWORD.value;
	if(uname==null||uname=="")
		{
		alert("Username can't be empty");
		return false;
		}
	if(password==null||password=="")
	{
	alert("Please enter password");
	return false;
	}
}
</script>

</head>
 
<body >

 
<h2 align="center"><font color="red">Festival Registration System</font></h2>
 
<h3 align="center">Login</h3>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<center> <font color="red"> <c:out value="${ERROR}" ></c:out></font></center>
 

 
<form name="myform" action="searchVisitor.htm" onsubmit="return validateForm()">
 
<table align="center">
 
<tr>
 
<td>Username</td>
 
<td><input type="text" id="USERNAME" name="USERNAME"/></td><p/>
 
</tr>
 
<tr>
 
<td>Password</td>
 
<td><input type="password" id="PASSWORD" name="PASSWORD"/></td><p/>
 
</tr>
 
<tr>
 
<td><input type="reset" value="Clear"></td>
 
<td><input type="submit" value="Login"/></td>
 
</tr>
  
<tr>
 
<td><h4>New User?</h4></td><br>
 
 
<td><a href="register.jsp">Register</td>
 
 
</tr>
 
</table>
 
 
</form> 

 
</body>
 
</html>



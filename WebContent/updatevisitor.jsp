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
<title>Update Visitor Details</title>
</head>
<body>
 <table border="2" cellpadding="10"  color="green" width="1340">
    <tr bgcolor="#004b66">
     <td>
      <h2>
       <a href="searchVisitor.htm"><font text color = "white">Festival Registration System</font></a></center>
      </h2>
     </td>
     <td>
     <a href="logout.htm"><font text color = "white">Logout</font></a>
     </td>
      <td>
     <a href="changepassword.jsp"><font text color = "white">Change Password</font></a>
     </td>
     <td>
     <a href="about.jsp"><font text color = "white">About</font></a>
     </td>
     <td>
     <a href="catalog.htm"><font text color = "white">Events</font></a>
     </td>
    </tr>
</table>    
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	 <% if(request.getAttribute("status")!=null)
	 {
	 %>
	 <font color="green"><h3 align="center"><c:out value="${status}"></c:out></font>
	 <%
	 } 
	 %>
	  <% if(request.getAttribute("updatestatus")!=null)
	 {
	 %>
	 <font color="red"><c:out value="${updatestatus}"></c:out></font>
	 <%
	 } 
	 %>
</body>
</html>
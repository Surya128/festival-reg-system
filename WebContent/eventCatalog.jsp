<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="header.jsp"%>
     <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
<title>event Catalogue</title>
</head>
<body>

<table border="2" cellpadding="10"  color="green" width="1340">
<tr bgcolor="#004b66"><td align="center"><h2><a href="searchVisitor.htm"><font text color = "white">Festival Registration System</font></a></h2></td>
 <td>
     <a href="logout.htm"><font text color = "white">Logout</font></a>
     </td>
      <td>
     <a href="about.jsp"><font text color = "white">About</font></a>
     </td>
     <td>
     <a href="catalog.htm"><font text color = "white">Events</font></a>
     </td>
     <c:if test="${visitor.admin}">
     <td>
     <a href="displayEvent.htm?eventId=-1"><font text color = "white">Add Events</font></a>
     </td>
      </c:if> 
</tr>
<center>
</table>
<center>  
 <table>   
        <form action="searchEventByName.htm">
        <tr><hr>
	<td>Search Events  <input type="text" name="eventname"/></td>
	<td><input type="submit" value="Search"/></td>
	</tr>
	</form> 
</table>
</center>
</form>
</CENTER>
<hr>
<table border="2" width="1340">
    <tr> <th colspan="9"><font color="red">Event List</font></th></tr>
    <tr>
      <th>Event Id</th>
      <th>Name</th>
      <th>Description</th>
      <th>Place</th>
      <th>Duration</th>
      <th>EventType</th>
      <th>SeatsAvailable</th>
      <th>Session ID</th>
       <c:if test="${visitor.admin}">
      <th colspan="2">Actions</th>
      </c:if>
     </tr>
   
    
 <c:forEach items="${allEvents}" var="e" >

   <tr>
     <td><c:out value="${e[0]}"/></td>
     <td><c:out value="${e[1]}"/></td>
     <td><c:out value="${e[2]}"/></td>
     <td><c:out value="${e[3]}"/></td>
     <td><c:out value="${e[4]}"/></td>
     <td><c:out value="${e[5]}"/></td>
     <td><c:out value="${e[6]}"/></td>
     <td><c:out value="${e[7]}"/></td>
		   
    <c:if test="${visitor.admin}">
   <td><a href="displayEvent.htm?eventId=${e[0]}&sessionId=${e[7]}">Update</a></td>
   <td><a href="deleteEvent.htm?eventId=${e[0]}&sessionId=${e[7]}">Delete</a></td>

    </c:if> 
		     </tr>

</c:forEach>  

   </table>
</body>
</html>
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
<!--
 var nHist=window.history.length;
 if(window.history[nHist]!=window.location)
	 window.history.forward();
 	//-->
 </script>
 
<title>Insert title here</title>
</head>
<body>
<CENTER>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
</tr>
</table>
</CENTER>
<form action="updateEvent.htm">
	<input type="hidden" id="isadd" name="isAdd" value="${isAdd}"  required/>
<center>
<table border="1">
<tr>
<td>
	Event ID:<input type="text" id="eventid" name="eventId"  value="${event.eventid}" required/>
</td>
</tr>

<tr>
<td>
	Session ID<input type="text" id="sessionid" name="sessionId" value="${event.sessionId}" required/>
</td>
</tr>


<tr>
<td>
	Event Name: <input type="text" id="eventname" name="eventName" value="${event.name}" required/>
</td>
</tr>

<tr>
<td>
	Description: <input type="text" id="desc" name="desc"  value="${event.description}" required/>
</td>
</tr>

<tr>
<td>
	Place: <input type="text" id="place" name="place"  value="${event.place}" required/>
</td>
</tr>

<tr>
<td>
	Duration: <input type="text" id="duration" name="duration" value="${event.duration}"  required >
</td>
</tr>

<tr>
<td>
	Eventtype: <input type="text" id="eventtype" name="eventType"  value="${event.eventtype}" required/>
</td>
</tr>
<tr>
<td>
	SeatsAvailable: <input type="text" id="ticket" name="ticket"  value="${event.seatsavailable}" required/>
</td>
</tr>

 
 <c:if test="${isAdd}">	
<tr>
<td>
	Coordinator: 
	<select id="coordinator" name="coordinator">
	<option value="101" >Admin1</option>
	<option value="102" >Admin2</option>
	<option value="103" >Admin3</option>
	<option value="104" >Admin4</option>
	<option value="105" >Admin5</option>
	
	
		
	
	</select>
</td>
</tr>
<tr>
<td>
	EventSession: <input type="text" id="eventSession" name="eventSession"  required/>
</td>
</tr>

</c:if>

<tr colspan="2">
<td><input type="submit" value="Register"/></td>
 <% if(request.getAttribute("status")!=null)
	 {
	 %>
	<font color="green"> <c:out value="${REGISTRATIONSTATUSMESSAGE}"></c:out></font>
	 <%
	 } 
	 %>
	  <% if(request.getAttribute("status")==null)
	 {
	 %>
	 <c:out value="${REGISTRATIONSTATUSMESSAGE}"></c:out>
	 <%
	 } 
	 %>
</tr>

</table>
</center>
</form>
</body>
</html>
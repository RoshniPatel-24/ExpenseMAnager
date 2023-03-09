<%@page import="java.util.List"%>
<%@page import="com.arth.bean.StatusBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h3>List status</h3>
 
 <%
	List<StatusBean> list =  (List<StatusBean>)request.getAttribute("list");
 %>

<table border="1">

	<tr>
		<th>StatusId</th>
		<th>StatsuName</th>
		<th>Deleted?</th>
		<th>Action</th>
	</tr>



<%for(StatusBean cb:list){ %>
	<tr>
		<td><%=cb.getStatusId() %></td>
		<td><%=cb.getStatusName() %></td>
		<td><%=cb.getDeleted()%></td>
		<td><a href="deletestatus/<%=cb.getStatusId() %>">Delete</a></td>
	</tr>
	
	<%} %>
</table>

<a href="admindashboard">Admin Dashboard</a>


</body>
</html>
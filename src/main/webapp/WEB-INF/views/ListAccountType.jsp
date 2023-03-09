<%@page import="com.arth.bean.AccountBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h3>List AccountType</h3>
 
 <%
	List<AccountBean> list =  (List<AccountBean>)request.getAttribute("list");
 %>

<table border="1">

	<tr>
		<th>AccountId</th>
		<th>AccountName</th>
		<th>Deleted?</th>
		<th>Action</th>
		
	</tr>



<%for(AccountBean cb:list){ %>
	<tr>
		<td><%=cb.getAccountId() %></td>
		<td><%=cb.getAccountName() %></td>
		<td><%=cb.getDeleted()%></td>
		<td><a href="deletestatus/<%=cb.getAccountId() %>">Delete</a></td>
	</tr>
	
	<%} %>
</table>

<a href="admindashboard">Admin Dashboard</a>


</body>
</html>
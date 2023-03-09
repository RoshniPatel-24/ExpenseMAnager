<%@page import="com.arth.bean.VendorBean"%>
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
<h3>List Vendor</h3>
 
 <%
	List<VendorBean> list =  (List<VendorBean>)request.getAttribute("list");
 %>

<table border="1">

	<tr>
		<th>VendorId</th>
		<th>VendorName</th>
		<th>Deleted?</th>
		<th>Action</th>
	</tr>



<%for(VendorBean cb:list){ %>
	<tr>
		<td><%=cb.getVendorId() %></td>
		<td><%=cb.getVendorName() %></td>
		<td><%=cb.getDeleted()%></td>
		<td><a href="deletVendor/<%=cb.getVendorId() %>">Delete</a></td>
	</tr>
	
	<%} %>
</table>

<a href="admindashboard">Admin Dashboard</a>


</body>
</html>
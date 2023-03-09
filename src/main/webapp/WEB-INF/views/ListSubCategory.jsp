<%@page import="java.util.List"%>
<%@page import="com.arth.bean.SubCategoryBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Expense Manager	|	List Sub Category</title>
</head>
<body>

<h3>List Sub Category</h3>
 
 <%
	List<SubCategoryBean> list =  (List<SubCategoryBean>)request.getAttribute("list");
 %>

<table border="1">

	<tr>
		<th>SubCategoryId</th>
		<th>SubCategoryName</th>
		<th>Deleted?</th>
		<th>Action</th>
	</tr>



<%for(SubCategoryBean cb:list){ %>
	<tr>
		<td><%=cb.getSubCategoryId() %></td>
		<td><%=cb.getSubCategoryName() %></td>
		<td><%=cb.isDeleted()%></td>
		<td><a href="deletesubcategory/<%=cb.getSubCategoryId() %>">Delete</a></td>
	</tr>
	
	<%} %>
	

</table>

<a href="admindashboard">Admin Dashboard</a>



</body>
</html>
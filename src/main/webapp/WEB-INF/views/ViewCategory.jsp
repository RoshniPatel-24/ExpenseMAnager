<%@page import="com.arth.bean.CategoryBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Expense Manager	|	View Category</title>
</head>
<body>

<%CategoryBean categoryBean = (CategoryBean)request.getAttribute("categoryBean"); %>

CategoryId:<%=categoryBean.getCategoryId() %><br>
CategoryName:<%=categoryBean.getCategoryName()%><br>

</body>
</html>
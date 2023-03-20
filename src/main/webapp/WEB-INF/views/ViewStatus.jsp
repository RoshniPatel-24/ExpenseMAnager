<%@page import="com.arth.bean.StatusBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Expense Manager	|	View Status</title>
</head>
<body>

<%StatusBean statusBean = (StatusBean)request.getAttribute("statusBean"); %>

StatusId:<%=statusBean.getStatusId()%><br>
StatusName:<%=statusBean.getStatusName()%><br>

</body>
</html>
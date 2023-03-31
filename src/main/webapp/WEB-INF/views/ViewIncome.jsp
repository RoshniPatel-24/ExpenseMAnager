<%@page import="com.arth.bean.IncomeBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Expense Manager	|	View Income</title>
</head>
<body>

<%IncomeBean incomeBean = (IncomeBean)request.getAttribute("incomeBean"); %>

IncomeId:<%=incomeBean.getIncomeId()%><br>



</body>
</html>
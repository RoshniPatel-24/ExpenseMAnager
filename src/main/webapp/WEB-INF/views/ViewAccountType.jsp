<%@page import="com.arth.bean.AccountBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Expense Manager	|	View Status</title>
</head>
<body>

<%AccountBean accountBean = (AccountBean)request.getAttribute("accountBean"); %>

AccountId:<%=accountBean.getAccountId()%><br>
AccountName:<%=accountBean.getAccountName()%><br>

</body>
</html>
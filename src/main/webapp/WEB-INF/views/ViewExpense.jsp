<%@page import="com.arth.bean.ExpenseBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Expense Manager	|	View Expense</title>
</head>
<body>

<%ExpenseBean expenseBean = (ExpenseBean)request.getAttribute("expenseBean"); %>

ExpenseId:<%=expenseBean.getExpenseId()%><br>
ExpenseName:<%=expenseBean.getExpenseName()%><br>

</body>
</html>
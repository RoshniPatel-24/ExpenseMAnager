<%@page import="com.arth.bean.ExpenseBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Expense Manager	|	View Expense</title>
<jsp:include page="AdminHeader.jsp"></jsp:include>
</head>
<body>
<jsp:include page="AdminSidbar.jsp"></jsp:include>

<%ExpenseBean expenseBean = (ExpenseBean)request.getAttribute("expenseBean"); %>

ExpenseId:<%=expenseBean.getExpenseId()%><br>
Title:<%=expenseBean.getTitle()%><br>
CategoryName:<%=expenseBean.getCategoryName()%><br>
SubCategoryName:<%=expenseBean.getSubCategoryName()%><br>
VendorName:<%=expenseBean.getVendorName()%><br>
AccountType:<%=expenseBean.getAccountType()%><br>
Status:<%=expenseBean.getStatusName()%><br>
Date:<%=expenseBean.getDate()%><br>
Description:<%=expenseBean.getDescription()%><br>
UserName:<%=expenseBean.getFirstName()%><br>
 <jsp:include page="AdminFooter.jsp"></jsp:include>

</body>
</html>
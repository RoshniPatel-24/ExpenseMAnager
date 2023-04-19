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
Title:<%=incomeBean.getTitle() %><br>
Date:<%=incomeBean.getDate() %><br>
UserName:<%=incomeBean.getFirstName() %><br>
AccountType:<%=incomeBean.getAccountType() %><br>
Description:<%=incomeBean.getDescription() %><br>
Status:<%=incomeBean.getStatusName() %><br>
Amount:<%=incomeBean.getAmount()%><br>
 <jsp:include page="AdminFooter.jsp"></jsp:include>

</body>
</html>
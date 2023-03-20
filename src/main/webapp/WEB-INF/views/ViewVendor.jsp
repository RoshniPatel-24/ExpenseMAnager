<%@page import="com.arth.bean.VendorBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Expense Manager	|	View Vendor</title>
</head>
<body>

<%VendorBean vendorBean = (VendorBean)request.getAttribute("vendorBean"); %>

VendorId:<%=vendorBean.getVendorId()%><br>
VendorName:<%=vendorBean.getVendorName()%><br>

</body>
</html>
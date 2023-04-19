<%@page import="com.arth.bean.SubCategoryBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Expense Manager	|	View Category</title>
</head>
<body>

<%SubCategoryBean subCategoryBean = (SubCategoryBean)request.getAttribute("subCategoryBean"); %>

SubCategoryId:<%=subCategoryBean.getSubCategoryId()%><br>
CategoryId:<%=subCategoryBean.getCategoryId()%><br>
SubCategoryName:<%=subCategoryBean.getSubCategoryName()%><br>
 <jsp:include page="AdminFooter.jsp"></jsp:include>

</body>
</html>
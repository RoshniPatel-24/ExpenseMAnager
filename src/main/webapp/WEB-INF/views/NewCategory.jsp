<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Expense Manager	|	AddCategory</title>
</head>
<body>

<form action="savecategory" method="post">
		CategoryName : <input type="text" name="categoryName"/>
		
		<br><br>
		<input type="submit" value="Save Category"/>
	
	</form>
	<a href="listcategories">List Category</a> <br>
	<a href ="savesubcategory">Sub Category</a>


</body>
</html>
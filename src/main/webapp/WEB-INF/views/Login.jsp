<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Expense Manager	|	Login</title>
</head>
<body>

<h1>LOGIN PAGE</h1>
<form action="authentication" method="post">

Email:<input type="email" name="email"><br><br>
Password:<input type="password" name="password"><br><br>

<input type="submit" value="SUBMIT"> 

</form>
<font color="red">${error}</font>
	
	<br><Br>
	
	<a href="signup">Signup</a> | <a href="forgetpassword">ForgetPassword?</a>


</body>
</html>
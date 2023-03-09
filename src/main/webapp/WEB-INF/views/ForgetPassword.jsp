<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Expense Manager	|	ForgetPassword</title>
</head>
<body>

<form action="sendotpforforgetpassword" method="post">
	Email : <input type="email" name="email"><br><br>
	<input type="Submit" value="send OTP"/><br><br>

</form><br><br>

<font color="red">${error}</font><br>


<a href="login">LogIn</a>


</body>
</html>
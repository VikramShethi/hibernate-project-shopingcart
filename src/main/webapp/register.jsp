<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="reg" method="post">
NAME<input type="text" name="nm"><br>
AGE<input type="number" name="age"><br>
gender<input type="radio" name="gender" value="Male"required="required">Male
<input type="radio" name="gender" value="Female"required="required">Female
<br>
Phone<input type="tel" name="ph"><br>
Email<input type="email" name="em"><br>
Password<input type="password" name="ps"><br>
<input type="submit" value="Register">
</form>
</body>
</html>
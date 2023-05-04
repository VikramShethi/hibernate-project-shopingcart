<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
form {
	align-items: center;
	align-content: center;
	align-self: center;
}
</style>
</head>
<body>
<%
String msg=(String)request.getAttribute("msg");
if(msg!=null){
%>
<h2><%=msg %></h2>
<%
}
%>
<h2></h2>
	<form action="login" method="post">
		<input type="tel" name="ph" placeholder="Enter Your Number"> <input
			type="password" name="ps" placeholder="Enter Your Password">
		<input type="Submit" value="Login">
	</form>
	<h2>
		<a href="register.jsp">Click Here To Register</a>
	</h2>
</body>
</html>
<%@page import="org.jsp.userproductapp.dto.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	User user = (User) session.getAttribute("user");
	if (user != null) {
	%>
	<form action="editUser" method="post" >
		<input type="hidden" name="id" value="<%=user.getId()%>"><br>
		
		NAME <input type="text" name="nm" value="<%=user.getName()%>"><br>
		
		EMAIL <input type="email" name="em" value="<%=user.getEmail()%>"><br>
		
		AGE <input type="number" name="age" value="<%=user.getAge()%>"><br>
		
		GENDER <input type="radio" name="gender" value="Male">Male
		
		<input type="radio" name="gender" value="Female">Female<br>
		
		PHONE NUMBER <input type="tel" name="ph" value="<%=user.getPhone()%>"><br>
		
		PASSWORD <input type="password" name="ps"
			value="<%=user.getPassword()%>"><br> <input
			type="submit" value="Update">
	</form>
	<%
	} else {
	response.sendRedirect("login.jsp");
	}
	%>
</body>
</html>
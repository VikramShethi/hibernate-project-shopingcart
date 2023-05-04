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
	<h3>ID:<%=user.getId() %></h3>
	<h3>NAME:<%=user.getName() %></h3>
	<h3>AGE:<%=user.getAge() %></h3>
	<h3>PHONE:<%=user.getPhone() %></h3>
	<h3>Email:<%=user.getEmail() %></h3>
	<h3>Gender:<%=user.getGender() %></h3>
	 <%
	}else{
		response.sendRedirect("login.jsp");
	}
	 %>
</body>
</html>
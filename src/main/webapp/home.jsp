<%@page import="org.jsp.userproductapp.dto.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="orange">
	<%
	User user = (User) session.getAttribute("user");
	if (user != null) {
	%>
	<h2>
		Welcome Mr.<%=user.getName()%>
	</h2>
	<h2>
		<a href="edituser.jsp">Edit Your Profile</a>
	</h2>
	<h2>
		<a href="viewuser.jsp">View Your Profile</a>
	</h2>
	<h2>
		<a href="delete">Delete Your Profile</a>
	</h2>
	<h2>
		<a href="logout">Log-Out</a>
	</h2>
	<h2>
	<a href="addProduct.jsp">Add Product</a>
	</h2>
	<h2>
	<a href="viewproducts">View Product</a>
	</h2>
	<%
	} else {
	response.sendRedirect("login.jsp");
	}
	%>
</body>
</html>
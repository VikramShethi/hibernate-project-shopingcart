<%@page import="org.jsp.userproductapp.dto.Product"%>
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
  User user=(User)session.getAttribute("user");
  if(user!=null){
	  Product p =(Product)request.getAttribute("product");
  %>
  <form action="editproduct" method="post">
  <input type="hidden" value="<%=p.getId()%>" name="id"><br>
  Name<input type="text" name="nm" value="<%=p.getName() %>"><br>
  Description<input type="text" name="desc"value="<%=p.getDescription() %>"><br>
  Brand<input type="text"name="br" value="<%=p.getBrand() %>"><br>
  Category<input type="text" name="cat" value="<%=p.getCategory() %>"><br>
  Image<input type="text" name="img" value="<%=p.getImage() %>"><br>
  Price<input type="text" name="price" value="<%=p.getPrice() %>">
  <input type="Submit" value="Update">
  </form>
  <%
  }else{
	  response.sendRedirect("login.jsp");
  }
  %>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <form action="addProduct" method="post">
  Name<input type="text" name="nm"><br>
  Description<input type="text" name="desc"><br>
  Brand<input type="text" name="br"><br>
  Category<input type="text" name="cat"><br>
  Image<input type="text" name="img"><br>
  Price<input type="number" name="price"><br>
  <input type="submit" value="Add">
  </form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">

<title>Insert title here</title>
</head>
<body>
<h1>책 추가하기</h1>
<!-- form>(input+br)*2+input:s -->
<form action="07add-book.jsp" method="post">
	<input type="text" name="title" placeholder="책 제목">
	<br>
	<input type="number" name="price" placeholder="가격">
	<br>
	<input type="submit" value="등록">
</form>


</body>
</html>
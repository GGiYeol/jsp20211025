<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>회원가입</h1>

<!-- form>(input:text+br)*3+input:s -->
<form action="/myjsp/02request/34signup-process.jsp" method="post">
	<input type="text" name="name" id="" placeholder="아이디">
	<br>
	<input type="email" name="email" id="" placeholder="이메일">
	<br>
	<input type="password" name="password" id="" placeholder="암호">
	<br>
	<input type="submit" value="가입">
</form>
</body>
</html>








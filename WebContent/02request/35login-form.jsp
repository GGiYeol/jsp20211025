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

<h1>로그인</h1>

<!-- <form action="/myjsp/02request/36login-process.jsp" method="post"> -->
<form action="<%= request.getContextPath() %>/02request/36login-process.jsp" method="post">
	<input type="text" name="id" placeholder="아이디">
	<br>
	<input type="password" name="pw" placeholder="암호">
	<br>
	<input type="submit" value="로그인">
</form>

</body>
</html>
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
<form action="" method="post">
	이름 : <input type="text" name="name" id=""> <br>
	이메일 : <input type="email" name="email" id=""> <br>
	패스워드 : <input type="password" name="password" id=""> <br>
	<input type="submit" value="가입">
</form>

<hr>

<%
String name = request.getParameter("name");
String email = request.getParameter("email");
String pw = request.getParameter("password");
%>
<h1>가입정보</h1>
이름 : <%= name %> <br>
이멜 : <%= email %> <br>
암호 : <%= pw %> <br>

</body>
</html>












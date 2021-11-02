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

<form action="">
	<input type="text" name="id" placeholder="아이디"> <br>
	<input type="password" name="password" placeholder="암호"> <br>
	<input type="submit" value="로그인">
</form>

<%
String id = request.getParameter("id");
if (id !=  null) {
	session.setAttribute("username", id);
}
%>

<a href="06main.jsp">메인페이지</a>
</body>
</html>







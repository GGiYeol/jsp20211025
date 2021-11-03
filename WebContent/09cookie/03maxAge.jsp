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

<h1>쿠키 추가, 유효시간 설정</h1>
<%
Cookie cookie = new Cookie("long-age-cookie", "cookie-value1");

cookie.setMaxAge(60); // 초단위
response.addCookie(cookie);
%>

</body>
</html>











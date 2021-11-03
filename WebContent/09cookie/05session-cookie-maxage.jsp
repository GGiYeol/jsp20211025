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
<h1>세션 쿠키 maxAge 재설정</h1>
<%
Cookie[] cookies = request.getCookies();

Cookie sessionCookie = null;
for (Cookie cookie : cookies) {
	String name = cookie.getName();
	
	if (name.equals("JSESSIONID")) {
		sessionCookie = cookie;
		sessionCookie.setPath(request.getContextPath());
		sessionCookie.setHttpOnly(true);
		sessionCookie.setMaxAge(60*60);
		response.addCookie(sessionCookie);
	}
}
%>
</body>
</html>















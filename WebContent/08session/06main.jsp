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

<%
String name = (String) session.getAttribute("username");

if (name != null) {
%>
	<h1><%= name %>님 반갑습니다.</h1>
	<a href="06logout.jsp">로그아웃</a>
<%
} else {
%>
	<h1>손님 반갑습니다.</h1>
<%
}
%>

</body>
</html>






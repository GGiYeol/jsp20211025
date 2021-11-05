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
request.setAttribute("name", "donald");
%>
<%
request.setAttribute("age", 30);
%>
<%
request.setAttribute("height", 190.5);
%>
<%
request.setAttribute("width", 300.3333);
%>
<jsp:forward page="06to.jsp"></jsp:forward>
<!-- foward하기 전에 request를 해야함 -->
</body>
</html>
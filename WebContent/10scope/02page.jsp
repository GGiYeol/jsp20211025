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
<h1>page 영역</h1>
<%
pageContext.setAttribute("pageAttr1", "pageVal1");
%>

<%
String attr1 = (String) pageContext.getAttribute("pageAttr1");
%>

<%= attr1 %>
</body>
</html>












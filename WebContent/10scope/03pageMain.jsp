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

<h1>main page</h1>

<%
pageContext.setAttribute("pageAttr2", "pageVal2");
%>

<hr>
<jsp:include page="03pageSub.jsp"></jsp:include>
<hr>

<%= pageContext.getAttribute("pageAttr2") %>
</body>
</html>






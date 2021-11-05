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
pageContext.setAttribute("attr1", "page value1");
request.setAttribute("attr1", "request value1");

%>

<p>${attr1 }</p>
<p>${requestScope.attr1 }</p>

</body>
</html>














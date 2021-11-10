<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
pageContext.setAttribute("arr", new String[] {"a", "b", "c", "d", "e", "f"});
%>

<c:forEach begin="2" end="4" items="${arr }" var="item">
	${item } <br>
</c:forEach>

<hr>

<c:forEach begin="2" items="${arr }" var="item">
	${item } <br>
</c:forEach>
<hr>

<c:forEach end="4" items="${arr }" var="item">
	${item } <br>
</c:forEach>

</body>
</html>














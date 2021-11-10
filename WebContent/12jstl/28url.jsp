<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<title>Insert title here</title>
</head>
<body>
<a href="25process.jsp?title=java&writer=kim&price=300&stock=100&publisher=oh&stock=100">책 등록 처리</a>
<hr>
<c:url value="25process.jsp" var ="addSpringUrl" scope="page">
	<c:param name="title" value="spring"/>
	<c:param name="writer" value="kiim"/>
	<c:param name="price" value="10000"/>
	<c:param name="stock" value="100"/>
	<c:param name="publisher" value="koko"/>
</c:url>

<a href="${addSpringUrl }">스프링책 추가</a>

</body>
</html>
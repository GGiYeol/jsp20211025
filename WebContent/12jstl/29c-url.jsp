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
<c:url value="25process.jsp" var="newPython" scope="page">
	<c:param name = "title" value="python"/>
	<c:param name = "publisher" value="jang"/>
	<c:param name = "price" value="100000"/>
	<c:param name = "stock" value="100"/>
	<c:param name = "writer" value="kimpython"/>
</c:url>
<a href="${newPython }">새로운 파이썬 책 추가</a>

</body>
</html>
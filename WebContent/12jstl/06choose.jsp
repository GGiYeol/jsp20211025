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
<h1>choose</h1>
<!-- age파라미터의 값이 20이상이면
투표 가능합니다

아니면
투표 불가능합니다 -->

<c:choose>
	<c:when test = "${param.age gt 19 or param.age eq 20}">
		<p>투표 가능합니다</p>
	</c:when>
	<c:otherwise>
		<p>투표 불가능합니다</p>
	</c:otherwise>
</c:choose>
</body>
</html>
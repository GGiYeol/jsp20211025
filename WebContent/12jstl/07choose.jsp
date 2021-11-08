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

<c:choose>
<c:when test = "${param.age <=10 }">
<p>어린이용</p>
</c:when>

<c:when test ="${param.age <=20 }" >
<p>청소년용</p>
</c:when>

<c:when test = "${param.age >20 }">	
<p>어른용</p>
</c:when>

<c:otherwise>
<p>입력되지 않았습니다</p>
</c:otherwise>

</c:choose>
</body>
</html>
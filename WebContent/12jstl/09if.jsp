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
<h1>if tag</h1>

<c:if test="${param.name == 'donald' && param.age == 22 }" var="mytest" scope="session">
	<h1>트루일 때만 실행</h1>
</c:if>

<p>매우 긴 콘텐츠..</p>

<c:if test="${param.name == 'donald' && param.age == 22 }">
	<h1>트루일 때만 실행2</h1>
</c:if>

<c:if test="${mytest }">
	<h1>트루일 때만 실행3</h1>
</c:if>

<c:if test="${not mytest }">
	<h1>false일때 실행</h1>
</c:if>

<h1>${mytest }</h1>
<h1>${sessionScope.mytest }</h1>

</body>
</html>
















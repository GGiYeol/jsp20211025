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
<h1>구구단 2~9단 (foreach)</h1>

<c:forEach begin="2" end="9" var="i">
	<h3>${i } 단</h3>
	<c:forEach begin="1" end="9" var="j">
		${i } X ${j } = ${i * j } <br>
	</c:forEach>
	<hr>
</c:forEach>

</body>
</html>
















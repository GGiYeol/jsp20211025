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
<h1>name 파라미터가 있으면 </h1>
<c:if test="${not empty param.name }"> <%-- ! empty param.name --%>
	<p>${param.name }님 반갑습니다.</p>
</c:if>

<h1>name 파라미터가 없으면</h1>
<c:if test="${empty param.name }">
	<p>손님 반갑습니다.</p>
</c:if>

<hr>
<p>
${ empty param.name ? '손' : param.name }님 반갑습니다.
</p>
</body>
</html>












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

<p>name : ${param.name }</p>
<p>food 1 : ${paramValues.food[0] }</p>
<p>food 2 : ${paramValues.food[1] }</p>
<p>food 3 : ${paramValues.food[2] }</p>

<hr>
<c:forEach items="${paramValues.food }" var="food" varStatus="status">
	<p>food ${status.count } : ${food }</p>
</c:forEach>

</body>
</html>














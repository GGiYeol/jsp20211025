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
<h1>foreach - array</h1>
<%
pageContext.setAttribute("list", new String[] {"apple", "melon", "coffee", "milk"});
%>
<%-- foreach 사용해서 

<ul>
	<li>apple</li>
	<li>melon</li>
	<li>coffee</li>
	<li>milk</li>
</ul>

 --%>
<ul>
	<c:forEach items="${list }" var="food">
		<li>${food }</li>
	</c:forEach>
</ul>
 
 
</body>
</html>


















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
pageContext.setAttribute("data", new String[] {"water", "jeju", "seoul", "paris", "milk"});
%>

<%-- varStatus 활용 --%>
<%--
<ul>
	<li>1 : seoul</li>
	<li>2 : paris</li>
</ul>
 --%>
<ul>
	<c:forEach items="${data }" var="item" varStatus="status" begin="2" end="3">
		<li>${status.count } : ${item }</li>
	</c:forEach>
</ul>

<hr>
<ul>
	<c:forEach items="${data }" var="item" varStatus="status" begin="2" end="3">
		<li>${status.count } : ${data[status.index] }</li>
	</c:forEach>
</ul>

</body>
</html>




















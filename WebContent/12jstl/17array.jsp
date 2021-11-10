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
pageContext.setAttribute("array", new String[] {"mvc", "itzy", "asap", "mafia", "spring"});
%>

<%-- foreach 사용 

<ol>
	<li>itzy</li>
	<li>asap</li>
	<li>mafia</li>
</ol>

--%>

<ol>
	<c:forEach items="${array }" var="item" begin="1" end="3">
		<li>${item }</li>
	</c:forEach>
</ol>
</body>
</html>
















<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">

<title>Insert title here</title>
</head>
<body>
<h1>request, session, application 비교</h1>
<%
Integer reqCounter = (Integer) request.getAttribute("counter");
if (reqCounter == null) {
	reqCounter = 0;
}
reqCounter++;
request.setAttribute("counter", reqCounter);

Integer sesCounter = (Integer) session.getAttribute("counter");
if (sesCounter == null) {
	sesCounter = 0;
}
sesCounter++;
session.setAttribute("counter", sesCounter);

Integer appCounter = (Integer) application.getAttribute("counter");
if (appCounter == null) {
	appCounter = 0;
}
appCounter++;
application.setAttribute("counter", appCounter);
%>

<ul>
	<li>request counter : <%= request.getAttribute("counter") %></li>
	<li>session counter : <%= session.getAttribute("counter") %></li>
	<li>application counter : <%= application.getAttribute("counter") %></li>
</ul>
</body>
</html>




















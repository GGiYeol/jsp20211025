<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="sample03javabean.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">

<title>Insert title here</title>
</head>
<body>
<h1>14forward-to.jsp (java code)</h1>

<%
Bean03 o = (Bean03) request.getAttribute("bean1");
%>
<p>name : <%= o.getName() %></p>
<p>age : <%= o.getAge() %></p>
<p>kid : <%= o.isKid() %></p>

</body>
</html>













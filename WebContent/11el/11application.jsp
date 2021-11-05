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
<p>java code: <%= application.getAttribute("appAttr1") %></p>
<p>el : ${appAttr1 }</p>

<p>java code: <%= application.getAttribute("appAttr2") %></p>
<p>el : ${appAttr2 }</p>

<p>java code: <%= application.getAttribute("appAttr3") %></p>
<p>el : ${appAttr3 }</p>

<p>java code: <%= application.getAttribute("appAttr4") %></p>
<p>el : ${appAttr4 }</p>
</body>
</html>
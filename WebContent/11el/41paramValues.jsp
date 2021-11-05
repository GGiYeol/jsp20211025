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
<h1>el paramValues 기본객체</h1>
<p>0 : <%= request.getParameterValues("param1")[0] %></p>
<p>1 : <%= request.getParameterValues("param1")[1] %></p>
<p>2 : <%= request.getParameterValues("param1")[2] %></p>

<hr>
<p>\${paramValues.param1[0] } : ${paramValues.param1[0] }</p>
<p>\${paramValues.param1[1] } : ${paramValues.param1[1] }</p>
<p>\${paramValues.param1[2] } : ${paramValues.param1[2] }</p>
</body>
</html>
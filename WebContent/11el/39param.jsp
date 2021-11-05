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
<h1>el param 기본 객체</h1>
<p>request parameter : <%= request.getParameter("param1") %></p>
<p>\${param.param1 } : ${param.param1 }</p>
<p>\${param.food } : ${param.food }</p>
</body>
</html>
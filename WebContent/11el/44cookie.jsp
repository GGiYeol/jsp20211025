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
<h1>el cookie 기본 객체</h1>
<p>${cookie.JSESSIONID }</p>
<p>${cookie.JSESSIONID.name }</p>
<p>${cookie.JSESSIONID.value }</p>
</body>
</html>
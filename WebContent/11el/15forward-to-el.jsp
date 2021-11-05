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
<h1>15forward-to-el.jsp</h1>

<%--
${bean1.setName("jeju") } 
 --%>

<p>name : ${bean1.name }</p>
<p>age : ${bean1.age }</p>
<p>kid : ${bean1.kid }</p>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>request parameter</h1>

<p><%= request.getParameter("name") %></p>
<p><%= request.getParameter("age") %></p>

</body>
</html>
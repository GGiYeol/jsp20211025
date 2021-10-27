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

<!-- input[type=text]+input[type=submit] -->
<form action="">
	<input type="text" name="param1"> <br>
	<input type="text" name="param2"> <br>
	<input type="submit">
</form>

<hr>
<%= request.getParameter("param1") %> <br>
<%= request.getParameter("param2") %>
</body>
</html>
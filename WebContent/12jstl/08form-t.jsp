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

<form action="08view-t.jsp">
	<!-- (input+br)*2+input:s -->
	<input type="text" name="name" placeholder="이름">
	<br>
	<input type="number" name="age" placeholder="나이">
	<br>
	<input type="submit" value="전송">
</form>

</body>
</html>





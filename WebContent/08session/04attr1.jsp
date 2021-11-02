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

<form action="04attr2.jsp">
	<!-- select>option*5^br+input:s -->
	<select name="food" id="">
		<option value="banana">banana</option>
		<option value="apple">apple</option>
		<option value="berry">berry</option>
		<option value="melon">melon</option>
		<option value="water">water</option>
	</select>
	<br>
	<input type="submit" value="등록">
</form>


</body>
</html>







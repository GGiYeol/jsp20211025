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

<form action="40view.jsp" method="post">
	<%-- 코드 작성 --%>
	<!-- (input+br)*3+textarea+br -->
	<input type="text" name="id" placeholder="아이디">
	<br>
	<input type="password" name="password" placeholder="암호">
	<br>
	<input type="email" name="email" placeholder="이메일">
	<br>
	<textarea name="address" id="" cols="30" rows="10" placeholder="주소"></textarea>
	<br>
	<input type="submit" value="전송">
</form>
</body>
</html>






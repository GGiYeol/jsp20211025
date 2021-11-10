<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<title>Insert title here</title>
</head>
<body>
<h1>책 등록</h1>

<!-- form>(input+br)*3+input:s -->
<form action="25process.jsp" method="post">
	<input type="text" name="title" placeholder="책 제목">
	<br>
	<input type="text" name="writer" placeholder="저자">
	<br>
	<input type="text" name="price" placeholder="가격" value="0">
	<br>
	<input type="text" name="publisher" placeholder="출판사">
	<br>
	<input type="number" name ="stock" value="1">재고
	<br>
	<input type="submit" value="등록">
</form>

<br>

<a href="25list-book.jsp">책 목록 보기</a>

</body>
</html>
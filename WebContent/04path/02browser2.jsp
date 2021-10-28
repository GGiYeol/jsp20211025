<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>컨텐츠 2</h1>
<hr>
<h3>절대 경로 링크</h3>
<a href = "<%= request.getContextPath()%>/04path/02browser1.jsp">1번 파일로 이동</a>
<h3>상대 경로 링크</h3>
<a href="02browser1.jsp">1번 파일로 이동 상대경로</a>
</body>
</html>
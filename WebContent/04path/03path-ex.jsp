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
<a href="/jsp20211025/02request/35login-form.jsp">02request폴더의 35번 파일로 이동(절대경로)</a>
<a href="<%= request.getContextPath()%>/02request/35login-form.jsp">02request폴더의 35번 파일로 이동(절대경로)</a>
<a href="../02request/35login-form.jsp">02request폴더의 35번 파일로 이동(상대경로)</a>
</body>
</html>
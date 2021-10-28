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
<p>standard action tag ((표준) 액션 태그)</p>
<p>ex) jsp:include, jsp:forward, jsp:param, jsp:body</p>

<hr>
<h1>include 액션 태그</h1>
<jsp:include page="/03module/03include-action-sub.jsp"></jsp:include>



</body>
</html>
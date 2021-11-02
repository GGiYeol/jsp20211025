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
<h1>세션을 유지하는 방법</h1>
<p>첫번째 요청에 대한 응답에 쿠키를 포함</p>

<p>두번째 요청부터 같은 쿠키를 가지고 있으면 같은 브라우저에서 온 요청이라고 판단</p>
</body>
</html>










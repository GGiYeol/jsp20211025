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
<h1> java bean</h1>
<ul>
	<li>기본 생성자</li>
	<li>get,set 메소드</li>
</ul>
<hr>
<h1>Java Bean Properties(속성)</h1>
<p>get, set메소드에 의해 결정됨</p>
<p>property의 이름은 get,set 메소드의 get/set을 지우고 앞글자를 소문자로 만들어 사용</p>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">

<title>Insert title here</title>
</head>
<body>
<h1>19to.jsp</h1>

<p>name : ${data1.name }</p>
<p>city : ${data1.city }</p>
<p>1000 : ${data1["1000"] }</p>
<p>this day : ${data1["this day"] }</p>


</body>
</html>
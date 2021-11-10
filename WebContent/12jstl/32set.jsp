<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import = "sample03javabean.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<title>Insert title here</title>
</head>
<body>
<h1>jstl set</h1>

<%
Bean06 book = new Bean06("java", "laaan", 300, "ahub", 10);
pageContext.setAttribute("attr", book);
%>
수량 : ${attr.stock }<br>

<c:set target="${attr }" property="stock" value="11"/>
수량 : ${attr.stock }<br>
<!-- 프로퍼티를 변경시키고 싶을 때 사용 -->



</body>
</html>
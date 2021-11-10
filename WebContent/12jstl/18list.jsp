<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">

<title>Insert title here</title>
</head>
<body>
<h1>foreach - list</h1>

<%
List<String> list = new ArrayList<>();
list.add("coffee");
list.add("milk");
list.add("beer");
list.add("water");

pageContext.setAttribute("datas", list);
%>

<c:forEach items="${datas }" var="item">
	${item } <br>
</c:forEach>
</body>
</html>














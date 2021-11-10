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
<h1>foreach - 구구단 2단</h1>

<%--
2 X 1 = 2
2 X 2 = 4
...
2 X 9 = 18
 --%>
 
<c:forEach begin="1" end="9" var="i">
	<p>2 X ${i } = ${ 2 * i }</p>
</c:forEach>
</body>
</html>













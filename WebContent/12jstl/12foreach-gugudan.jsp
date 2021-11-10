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
<h1>foreach 구구단 n단</h1>
<%--
http://localhost:8080/jsp20211025/12jstl/12foreach-gugudan.jsp?dan=3
dan 파라미터를 사용해서
구구단 출력

empty dan 이면 '단을 입력해주세요'
 --%>


<c:if test="${empty param.dan }" var="emptyDan">
	<p>단을 입력해주세요.</p>
</c:if>

<c:if test="${not emptyDan }" >
	<c:forEach begin="1" end="9" var="i">
		${param.dan } X ${i } = ${param.dan * i } <br>
	</c:forEach>
</c:if>
</body>
</html>












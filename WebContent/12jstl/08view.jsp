<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<title>Insert title here</title>
</head>
<body>
<%--
이름과 나이가 입력되지 않았으면
"정보를 입력하지 않았습니다." 출력

이름이 입력되지 않았으면
"손님"
입력되었으면 name파라미터의 값 그대로 사용

나이가 10 이하이면
"어린이용 추천"
나이가 20 이하이면
"청소년용 추천"
나이가 20 초과면
"성인용 추천"

나이가 입력되지 않으면
"나이가 입력되지 않았습니다"

 --%>
 <c:choose>
 	<c:when test = "${! empty param.name }">
 		<c:when test = "${param.age>10 }">
 			<p> ${param.name }님 청소년용 출력</p>
 		</c:when>
 		<c:when test="${param.age>20 }">
 			<p>${param.name }님 성인용 출력</p>
 		</c:when>
 	</c:when>
 	
 	<c:when test="">
 		<p></p>
 	</c:when>
 	
 	<c:when test="">
 		<p></p>
 	</c:when>
 	
 	<c:when test = "">
 		<p></p>
 	</c:when>
 	
 	<c:otherwise>
 		<p></p>
 	</c:otherwise>
 </c:choose>
<a href="08form.jsp"> 다시 입력</a>


</body>
</html>
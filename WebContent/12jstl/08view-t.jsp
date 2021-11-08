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
<%--
이름과 나이가 입력되지 않았으면
"정보를 입력하지 않았습니다." 출력

이름이 입력되지 않았으면
"손님"
입력되었으면 
'name파라미터의 값'

나이가 10이하이면
"어린이용 추천"

나이가 20이하이면
"청소년용 추천"

나이가 20초과이면
"성인용 추천"

나이가 입력되지 않으면
"나이가 입력되지 않았습니다."

 --%>

<a href="08form-t.jsp">다시 입력</a>


<c:choose>
	<c:when test="${empty param.name and empty param.age }">
		<p>정보가 입력되지 않았습니다.</p>
	</c:when>

	<c:otherwise>
		<p>
			<c:choose>
				<c:when test="${empty param.name }">
					손님
				</c:when>
				<c:otherwise>
					${param.name }님
				</c:otherwise>
			</c:choose>
			
			<c:choose>
				<c:when test="${param.age <= 10 && !empty param.age }">
					어린이용 추천
				</c:when>
				<c:when test="${param.age <= 20 && !empty param.age}">
					청소년용 추천
				</c:when>
				<c:when test="${param.age > 20}">
					성인용 추천
				</c:when>
				<c:otherwise>
					나이가 입력되지 않았습니다.
				</c:otherwise>
			</c:choose>
		</p>
		
	</c:otherwise>
</c:choose>

</body>
</html>











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
<h1>jstl core if</h1>
<!-- 그냥 if라고 쓰면 안되고 꼭 prefix를 붙혀서 사용해야한다. -->

<!-- content가 만족할때만 실행된다 -->
<c:if test ="">
	<p>출력됨1</p>
</c:if>
<c:if test ="true">
	<p>출력됨2 true 키워드</p>
</c:if>
<c:if test ="<%= 3 == 3 %>">
	<p>출력됨3 expression</p>
</c:if>
<!-- 자바 코드니까 가능한 쓰지 않을 것 -->
<!-- 주로 쓸 것은 expression language코드 -->

<c:if test ="${3 ==3 }">
	<p>출력됨4 expression language(el)</p>
</c:if>

</body>
</html>
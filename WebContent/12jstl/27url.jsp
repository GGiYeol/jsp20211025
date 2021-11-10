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
<h1>jstl url tag</h1>

<hr>
<a href="https://www.naver.com">네이버</a>
<br>
<a href="https://www.naver.com">네이버1</a>
<br>
<c:url value="https://www.naver.com" var ="naverUrl"/>
<!-- url을 정의하고, 적절한 이름을 입력해놓으면 계속 쓸 수 있다  -->
<a href="${naverUrl }">네이버2</a><br>
<a href="${naverUrl }">네이버3</a><br>
 
 <c:url value = "25book-form.jsp" var = "addBookUrl"/>
 <a href="${addBookUrl }">책 추가하기</a>
 <br>
 ${addBookUrl }
 <c:url value = "25book-form.jsp"/>
 <!-- var가 없으면 바로 출력 -->
 <hr>
 
 <a href="/12jstl/25book-form.jsp">책 추가하기(에러)</a>
 <!-- 404에러가 뜨는 이유?? /가 있으면 클라이언트 입장에서는 contestpath가 작정하지 않아서 에러가 뜬다 -->
<hr>
<a href="<%=request.getContextPath() %>/12jstl/25book-form.jsp">책 추가하기</a>
<br>
<c:url value="/12jstl/25book-form.jsp" var="addBookUrl2"/>
<a href="${addBookUrl2 }">책 추가하기</a>
</body>
</html>
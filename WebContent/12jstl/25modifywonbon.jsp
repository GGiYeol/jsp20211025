<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix = "fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body>

<c:set value="${applicationScope.books[param.index] }" var="book"/>

<h1>책 수정</h1>

<form action="25modify-process.jsp" method="post">
<!-- 인덱스도 같이 넘겨야 함 -->
	<input type="hidden" name="index" value="${param.index }">
	<!-- type을 hidden으로 두면 값은 넘어가는데 보이지는 않는다. -->
	<input type="text" name="title" placeholder="책 제목" value="${book.title }">
	<br>
	<input type="text" name="writer" placeholder="저자" value="${book.writer }">
	<br>
	<input type="text" name="price" placeholder="가격" value="0" value="${book.price }">
	<br>
	<input type="text" name="publisher" placeholder="출판사" value="${book.publisher }">
	<br>
	<input type="number" name ="stock" value="${book.stock }">재고
	<br>
	<input type="submit" value="수정">
</form>

<br>

<a href="25list-book.jsp">책 목록 보기</a>
<!-- 사용하는 요소가 거의 같기 때문 -->



<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
</body>
</html>
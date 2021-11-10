<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="sample03javabean.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">

<style>
table {
	border-collapse: collapse;
	width: 100%;
}

table, th, td {
	border: 1px solid black;
}
</style>

<title>Insert title here</title>
</head>
<body>
<%
List<Bean06> list = new ArrayList<>();
list.add(new Bean06("java", "kim", 10000));
list.add(new Bean06("react", "lee", 15000));
list.add(new Bean06("jsp", "park", 20000));
list.add(new Bean06("vue", "choi", 25000));
list.add(new Bean06("spring", "son", 30000));
list.add(new Bean06("mysql", "cha", 35000));

request.setAttribute("books", list);
%>
<h3>결과</h3>
<!-- table>tr>th*4^tr*6>td*4 -->
<table>
	<tr>
		<th>#</th>
		<th>제목</th>
		<th>저자</th>
		<th>가격</th>
	</tr>
	<tr>
		<td>1</td>
		<td>java</td>
		<td>kim</td>
		<td>10000</td>
	</tr>
	<tr>
		<td>2</td>
		<td>react</td>
		<td>lee</td>
		<td>15000</td>
	</tr>
	<tr>
		<td>3</td>
		<td>jsp</td>
		<td>park</td>
		<td>20000</td>
	</tr>
	<tr>
		<td>4</td>
		<td>vue</td>
		<td>choi</td>
		<td>25000</td>
	</tr>
	<tr>
		<td>5</td>
		<td>spring</td>
		<td>son</td>
		<td>30000</td>
	</tr>
	<tr>
		<td>6</td>
		<td>mysql</td>
		<td>cha</td>
		<td>35000</td>
	</tr>
</table>
<hr>

<h3>forEach</h3>

<table>
	<tr>
		<th>#</th>
		<th>제목</th>
		<th>저자</th>
		<th>가격</th>
	</tr>
	
	<c:forEach items="${books }" var="book" varStatus="status">
		<tr>
			<td>${status.count }</td>
			<td>${book.title }</td>
			<td>${book.writer }</td>
			<td>${book.price }</td>
		</tr>
	</c:forEach>
</table>

</body>
</html>



























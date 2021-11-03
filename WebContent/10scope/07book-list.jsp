<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="sample01.MyBook" %>
<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">

<title>Insert title here</title>
</head>
<body>
<h1>책 목록</h1>
<a href="07book-form.jsp">책 등록하기</a>
<ul>
<%
	List<MyBook> books = (List<MyBook>) application.getAttribute("books");
	if (books != null) {
		for (MyBook book : books) {
			
%>
	<li><%= book.getTitle() %> : <%= book.getPrice() %>원</li>
	
<%
		}
	}
%>
</ul>

<hr>
<h1>표현언어 (expression language - el)</h1>
<ul>
<li>${books[0].title } : ${books[0].price }원</li>
<li>${books[1].title } : ${books[1].price }원</li>
</ul>

</body>
</html>





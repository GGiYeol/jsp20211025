<%@page import="sample01.MyBook"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<title>Insert title here</title>
</head>
<body>
<h1>main</h1>

<%-- <jsp:include page="06sub.jsp"></jsp:include> --%>
<!-- nullpoint exception -->
<%
MyBook book1 = new MyBook("java", 30000);
request.setAttribute("book", book1);
%>
<!-- 값을 전달하는 방법중에 메서드를 전달하는 방법이 있다.attribute가 있다. -->
<jsp:include page="06sub.jsp"></jsp:include>
<!--133p, 공유할수 있는 방법이 나와있음. 영역을 담당할수 있는 객체  -->
</body>
</html>
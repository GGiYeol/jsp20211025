<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>expression</h1>
<%
// scriptlet
out.println(new Date());
%>
<br>

<%-- expression --%>
<%-- : out.print 메소드의 인수 --%>
<%= new Date()%>

<%--
메소드의 인수로 명령문을 작성할 수 없음
<%=
if (3 > 5) { 
	System.out.println("hi"); } 
%>
 --%>
</body>
</html>







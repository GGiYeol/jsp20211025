<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
out.write("hello jsp");
out.print("<p>hello out object</p>");
out.println("<p>hello out println </p>");
out.println("<p>implicit object 8 개</p>");

// Object a = new Object();
// a.toString();
%>
</body>
</html>
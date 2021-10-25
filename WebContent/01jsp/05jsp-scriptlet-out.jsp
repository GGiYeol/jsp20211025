<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>scriptlet, out</h1>
<%
for (int i = 0; i < 5; i++) {
%>
  <p>hello</p>
<%
}
%>

<hr>

<%
for (int i = 0; i < 5; i++) {
	out.println("<p>hello</p>");
}
%>
</body>
</html>






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

<!-- form>input:c+br+input:s -->
<form action="">
	<input type="checkbox" name="param1" id="" value="yes"> 동의
	<br>
	<input type="submit" value="동의함">
</form>

<%
String param = request.getParameter("param1");

out.print("<p>");
if (param != null && param.equals("yes")) {
	out.print("동의 하셨어요");
} else {
	out.print("동의 안하심");
}
out.print("</p>");
%>

</body>
</html>






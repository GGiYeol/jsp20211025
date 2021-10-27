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

<!-- form>input[type=date][name=param1]+input[type=submit] -->
<form action="">
	<input type="date" name="param1"> <br>
	<input type="number" name="param2"> <br>
	<input type="submit">
</form>

<hr>

<%= request.getParameter("param1") %> <br>

<%
// int a = request.getParameter("param2"); //xxx
String param2 = request.getParameter("param2");
out.print("param2:" + param2);

try {
	int a = Integer.parseInt(param2); // numberFormatException
	
	out.print("<br>");
	out.print(a);
} catch (NumberFormatException e) {
	out.print("<p>수로 변환할 수 없는 형식 </p>");
	e.printStackTrace();
}
%>
</body>
</html>








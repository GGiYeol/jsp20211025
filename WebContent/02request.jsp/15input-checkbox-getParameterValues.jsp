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
<!-- code 작성 -->
<!-- form>(input:c)*5+input:s -->
<form action="">
	<input type="checkbox" name="movie" value="action" id="">액션
	<input type="checkbox" name="movie" value="horror" id="">공포
	<input type="checkbox" name="movie" value="family" id="">가족
	<input type="checkbox" name="movie" value="kids" id="">어린이
	<input type="checkbox" name="movie" value="romance" id="">로맨스
	<input type="submit" value="전송">
</form>

<hr>
<ul>
<%
String[] movies = request.getParameterValues("movie");
if (movies != null) {
	for (String movie : movies) {
		out.print("<li>");
		out.print(movie);
		out.print("</li>");
	}
}
%>
</ul>
</body>
</html>
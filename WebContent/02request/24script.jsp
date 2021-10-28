<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>

<%
List<String> list = (List<String>) application.getAttribute("list");
if (list == null) {
	list = new ArrayList<>();
	application.setAttribute("list", list);
}
String txt = request.getParameter("text");
if (txt != null && !txt.isEmpty()) {
	list.add(txt);
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="">
	<textarea name="text" id="" cols="30" rows="10"></textarea>
	<input type="submit" value="전송">
</form>
<hr>
<%
for (int i = 0; i < list.size(); i++) {
%>
	<div><%= (i+1) + "번" %> : <%= list.get(i).replace("<", "&lt;").replace(">", "&gt;") %></div>
<%
}
%>



</body>
</html>










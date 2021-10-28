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

<form>
<input name="key">
<input type="submit">
</form>


<%
Map<String, String> map = new HashMap<>();
map.put("java", "language");
map.put("spring", "framework");
map.put("react", "library");
%>

<%
String param = request.getParameter("key");
%>

<p>값 : <%= map.get(param) %></p> <%-- language / framework / library / null --%>

</body>
</html>

















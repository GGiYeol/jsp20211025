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
<h1>map</h1>

<%
Map<String, String> map = new HashMap<>();
map.put("lang", "java");
map.put("pre", "html");
map.put("pattern", "mvc");
// 2개의 key,value 쌍(entry) 넣고
map.put("city", "seoul");
map.put("food", "cake");

pageContext.setAttribute("bean1", map);
%>

<hr>

<p>map : ${bean1 }</p>
<p>lang : ${bean1.lang }</p>
<p>pre : ${bean1.pre }</p>
<p>pattern : ${bean1.pattern }</p>
<%-- 위에 추가한 value를 출력 -el 사용 --%>
<p>city: ${bean1.city }</p>
<p>food: ${bean1.food }</p>
</body>
</html>


















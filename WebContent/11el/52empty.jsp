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
<h1>empty</h1>
<!-- ul>li*6 -->
<ul>
	<li>null이면 true</li>
	<li>빈 string("")이면 true</li>
	<li>길이가 0인 배열이면 true</li>
	<li>size가 0인 map은 true</li>
	<li>size가 0인 (list, set)이면 true</li>
	<li>나머지 false</li>
</ul>

<hr>
<%
pageContext.setAttribute("str", "");
%>
<p>${empty str }</p>

<%
pageContext.setAttribute("arr", new String[] {});
%>
<p>${empty arr }</p>

<%
pageContext.setAttribute("map", new HashMap());
%>
<p>${empty map }</p>

<%
pageContext.setAttribute("list", new ArrayList());
%>
<p>${empty list }</p>

<%
pageContext.setAttribute("set", new HashSet());
%>
<p>${empty set }</p>

<%
pageContext.setAttribute("var1", "val1");
%>
<p>${empty var2 }</p>

<hr>

<h1>값이 있는 지 확인하고 싶을 때는 not empty (! empty)</h1>
</body>
</html>















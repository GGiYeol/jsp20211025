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
<h1>session</h1>
<p>같은 브라우저에서 온 request가 공유하는 객체</p>
<%
Integer count = (Integer) session.getAttribute("count");
if(count == null){
	session.setAttribute("count", 1);
}
%>

<%=session.getAttribute("count")%>
<%
Integer c = (Integer) session.getAttribute("count");
c++;
session.setAttribute("count",c);
%>
</body>
</html>
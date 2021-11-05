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
<h1>같은 이름으로 다른 영역에 attribute가 있다면....</h1>
<h1>page, request, session, application 순서로 적용</h1>
<%
pageContext.setAttribute("attr01", "pageVal01");
request.setAttribute("attr01", "reqVal01");
session.setAttribute("attr01", "sesVal01");
application.setAttribute("attr01", "appVal01");

request.setAttribute("attr02", "reqVal02");
session.setAttribute("attr02", "sesVal02");
application.setAttribute("attr02", "appVal02");

session.setAttribute("attr03", "sesVal03");
application.setAttribute("attr03", "appVal03");

application.setAttribute("attr04", "appVal04");
%>

<p>attr01 : ${attr01 }</p>
<p>attr02 : ${attr02 }</p>
<p>attr03 : ${attr03 }</p>
<p>attr04 : ${attr04 }</p>
<p>attr05 : ${attr05 }</p>
</body>
</html>



















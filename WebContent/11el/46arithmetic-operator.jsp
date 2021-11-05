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
<h1>el 산술 연산</h1>
<%
pageContext.setAttribute("num1", 5);
pageContext.setAttribute("num2", 3);
%>
<p>num1 : ${num1 }</p>
<p>num2 : ${num2 }</p>
<p>num1 + num2 : ${num1 + num2 }</p>
<p>num1 - num2 : ${num1 - num2 }</p>
<p>num1 * num2 : ${num1 * num2 }</p>
<p>num1 / num2 : ${num1 / num2 }</p>
<p>num1 / num2 : ${num1 div num2 }</p>
<p>num1 % num2 : ${num1 % num2 }</p>
<p>num1 % num2 : ${num1 mod num2 }</p>

<hr>

<%
pageContext.setAttribute("num3", "5");
pageContext.setAttribute("num4", "3");
%>
<p>num3 + num4 : ${num3 + num4 }</p>
<p>num3 num4 연결 : ${num3 }${num4 }</p>

<hr>

<%
pageContext.setAttribute("num5", "five");
pageContext.setAttribute("num6", "three");
%>
<%-- <p>num5 + num6 : ${num5 + num6 }</p> --%>
<p>num5 num6 연결 : ${num5 }${num6 }</p>
</body>
</html>


















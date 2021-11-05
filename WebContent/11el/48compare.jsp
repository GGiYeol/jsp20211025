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
<%
pageContext.setAttribute("n1", 5);
pageContext.setAttribute("n2", 3);
%>
<p>n1 == n2 : ${n1 == n2 }</p>
<p>n1 == n2 : ${n1 eq n2 }</p>

<p>n1 != n2 : ${n1 != n2 }</p>
<p>n1 != n2 : ${n1 ne n2 }</p>

<p>n1 > n2 : ${n1 > n2 }</p>
<p>n1 > n2 : ${n1 gt n2 }</p>

<p>n1 >= n2 : ${n1 >= n2 }</p>
<p>n1 >= n2 : ${n1 ge n2 }</p>

<p>n1 < n2 : ${n1 < n2 }</p>
<p>n1 < n2 : ${n1 lt n2 }</p>

<p>n1 <= n2 : ${n1 <= n2 }</p>
<p>n1 <= n2 : ${n1 le n2 }</p>



</body>
</html>









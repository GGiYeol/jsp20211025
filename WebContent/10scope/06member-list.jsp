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
<h1>회원 목록</h1>
<a href="06signup-form.jsp">등록하기</a>

<ul>
<%
List<String> members = (List<String>) application.getAttribute("members");

if (members != null) {
	for (String member : members) {
%>
	<li><%= member %></li>
<%
	}
}
%>
</ul>

</body>
</html>
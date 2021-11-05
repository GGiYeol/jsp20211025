<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="sample03javabean.*" %>
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
Bean03 obj1 = new Bean03();
obj1.setAge(30);
obj1.setName("donald");
obj1.setKid(false);
pageContext.setAttribute("attr1", obj1);
%>

<hr>
<p>java code : <%= pageContext.getAttribute("attr1") %></p>
<p>el : ${attr1 }</p>

<hr>
<%
Bean03 var1 = (Bean03) pageContext.getAttribute("attr1");
%>
<p>java code : <%= var1.getName() %></p>
<p>el : ${attr1.name }</p>

<p>java code : <%= var1.getAge() %></p>
<p>el : ${attr1.age }</p>

<p>java code : <%= var1.isKid() %></p>
<p>el : ${attr1.kid }</p>


</body>
</html>
















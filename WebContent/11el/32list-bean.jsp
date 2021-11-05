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
List<Bean03> list = new ArrayList<>();
Bean03 b1 = new Bean03();
b1.setName("donald");
b1.setAge(99);

Bean03 b2 = new Bean03();
b2.setName("trump");
b2.setAge(33);

list.add(b1);
list.add(b2);

pageContext.setAttribute("people", list);

%>

<p>${people[0].name } : ${people[0].age }</p>
<p>${people[1].name } : ${people[1].age }</p>


</body>
</html>
















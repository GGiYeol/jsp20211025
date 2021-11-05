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
List<String> list = new ArrayList<>();
list.add("coffee");
list.add("beer");
list.add("soju");

pageContext.setAttribute("attr1", list);
%>


<p>list : ${attr1 }</p>
<p>list 0번째 : ${attr1[0] }</p>
<p>list 1번째 : ${attr1[1] }</p>
<p>list 2번째 : ${attr1[2] }</p>
<p>list 3번째 : ${attr1[3] }</p>

</body>
</html>




















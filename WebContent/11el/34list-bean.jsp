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
Bean05 o1 = new Bean05();
Bean03 o2 = new Bean03();
o2.setName("captain");

o1.setInfo(o2);

Bean05[] arr = {o1};
Map<String, Bean05[]> map = new HashMap<>();
map.put("data", arr);

pageContext.setAttribute("data", map);
%>

<%-- el사용해서 captain 출력 --%>
<p>${data.data[0].info.name }</p>
</body>
</html>













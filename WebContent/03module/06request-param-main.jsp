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
<h1>main contents</h1>

<%
Enumeration<String> iter =  request.getParameterNames();

while(iter.hasMoreElements()){
%>	
	<p><%= iter.nextElement()%></p>
<% 
}
%>



<hr>
<h2>sub start</h2>

<jsp:include page="/03module/06request-param-sub.jsp">
	<jsp:param value="seoul" name="city"/>
</jsp:include>
</body>
</html>
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
String[] arr = {"jin", "jk", "hope", "suga"};
request.setAttribute("arr1",arr);
//앞에 파라미터(이름)에는 서브쪽을 넣고, 뒤 파라미터(값)는 실제 들어갈 값을 넣어주면 된다.
//서브에서 꺼낸 이름대로 넣을때에도 넣으면 된다.
%>

<jsp:include page="03sub.jsp"></jsp:include>
</body>
</html>
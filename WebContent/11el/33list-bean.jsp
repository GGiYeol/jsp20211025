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

<%--
Bean04타입의 아이템을 2개 갖는 list를 page영역 attribute로 넣기

--%>
<%
Bean04 o1 = new Bean04();
o1.setNickName("ironman");
o1.setAge(22);

Bean04 o2 = new Bean04();
o2.setNickName("widow");
o2.setAge(11);

Bean04[] list = {o1, o2};
pageContext.setAttribute("list", list);
%>

<p>${list[0].nickName } : ${list[0].age }</p>
<p>${list[1].nickName } : ${list[1].age }</p>

</body>
</html>










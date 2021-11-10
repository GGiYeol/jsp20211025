<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<title>Insert title here</title>
</head>
<body>
<!-- 객체의 길이(size)를 반환해줌 -->
<%
List<String> list = new ArrayList<>();
list.add("java");
list.add("jsp");
pageContext.setAttribute("list", list);
pageContext.setAttribute("str", "hello world");
Map<String,String> map = new HashMap<>();
map.put("a", "b");
pageContext.setAttribute("map",map);
%>

${fn:length(list) }<br>	
${fn:length(str) }<br>
${fn:length(map) }<br>


<hr>
${list.size() }<br>
${str.length() }<br>
${map.size() }<br>

${map.get("a") }<br>

<!-- c:out 처럼 사용할 수 있는 함수 -->
<%
pageContext.setAttribute("str1", "hello world");
pageContext.setAttribute("str2", "hello <br>world");

%>

${str1 }<br>
${str2 }<br>

${fn:escapeXml(str2) }<br>

</body>
</html>
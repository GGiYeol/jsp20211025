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
Map<String, String> map = new HashMap<>();
map.put("name", "donald");
map.put("Name", "trump");
map.put("1", "java");
map.put("nick name", "coffee");
pageContext.setAttribute("bean1", map);

%>

<p>name : ${bean1.name }</p>
<p>name : ${bean1["name"] }</p>
<p>name : ${bean1[name] }</p>
<p>Name : ${bean1.Name }</p>
<p>Name : ${bean1["Name"] }</p>
<%-- <p>1 : ${bean1.1 }</p> --%>
<p>1 : ${bean1["1"] }</p>
<%-- <p>nick name : ${bean.nick name }</p> --%>
<p>nick name : ${bean1["nick name"] }</p>

<hr>

<%
Bean03 obj1 = new Bean03();
obj1.setName("computer");
pageContext.setAttribute("bean2", obj1);

%>
<p>name : ${bean2.name }</p>
<p>name : ${bean2["name"] }</p>

</body>
</html>















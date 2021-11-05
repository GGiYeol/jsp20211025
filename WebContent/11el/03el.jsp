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
<h1>expression language(EL)</h1>

<p>작성법 : \${attribute }</p>
<p>jsp에 출력용으로 사용됨</p>

<hr>
<h1>예제</h1>
<%
pageContext.setAttribute("pageAttr1", "pageVal1");
pageContext.setAttribute("pageAttr2", 100000);
pageContext.setAttribute("pageAttr3", true);
%>
<p>java code : <%= pageContext.getAttribute("pageAttr1") %></p>
<p>el : ${pageAttr1 }</p>
<p>java code : <%= pageContext.getAttribute("pageAttr2") %></p>
<%-- el사용해서 pageAttr2의 값 출력 코드 작성 --%>
<p>el : ${pageAttr2 }</p>
<%-- java code (expression) 사용해서 pageAttr3의 값 출력 코드 작성 --%>
<%-- el사용해서 pageAttr3의 값 출력 코드 작성 --%>
<p>java code : <%= pageContext.getAttribute("pageAttr3") %></p>
<p>el : ${pageAttr3 }</p>
<p>java code : <%= pageContext.getAttribute("pageAttr4") %></p>
<p>el : ${pageAttr4 }</p>

</body>
</html>













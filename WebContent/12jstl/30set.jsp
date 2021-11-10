<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
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
pageContext.setAttribute("attr1", "val1");
request.setAttribute("attr2", "val2");
session.setAttribute("attr3", "val3");
application.setAttribute("attr4", "val4");
%>

<!--유사하게 대체할 수 있는 set태그  -->

<!-- page영역에 attr5라는 이름으로 val5를 넣음 -->
<!-- scope는 영역 -->
<h1>jstl set tag</h1>
<c:set var="attr5" value="val5" scope="page"/>
${pageScope.attr1 } : ${pageScope.attr5 } <br>
<c:set var ="attr6" value="val6" scope="request"/>
${requestScope.attr2 } : ${requestScope.attr6 }<br>
<c:set var ="attr7" value="val7" scope="session"/>
${sessionScope.attr3 } : ${sessionScope.attr7 }<br>
<c:set var ="attr8" value="val8" scope="application"/>
${applicationScope.attr4 } : ${applicationScope.attr8 }


</body>
</html>
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
<c:set var="attr1" value="very Looooooooooong value"/>
${attr1 }
<!-- value 값이 너무 길때????? -->
<br>
<c:set var="attr2">very Loooooooooooooooong value</c:set>
${attr2 }

</body>
</html>
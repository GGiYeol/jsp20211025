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
<form action="42view.jsp" method="post">
<%-- input:text name 파라미터 --%>
<%-- input:checkbox food 파라미터 --%>
<input type="text" name="name" id="" placeholder="이름"> <br>
<input type="checkbox" name="food" value="pizza" id="">pizza
<br>
<input type="checkbox" name="food" value="cake" id="">cake
<br>
<input type="checkbox" name="food" value="milk" id="">milk
<br>

<input type="submit" value="전송">
</form>
</body>
</html>








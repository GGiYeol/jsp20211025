<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="sample01.MyPerson" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
List<MyPerson> list = new ArrayList<MyPerson>();
list.add(new MyPerson("hong", 22));
list.add(new MyPerson("kim", 33));
list.add(new MyPerson("lee", 55));

for (MyPerson p : list) {
%>
	<p><%= p.getName() %>님 : <%= p.getAge() %>세 </p>
<%
}
%>
<%--
<p>hong님 : 22세</p>
<p>kim님 : 33세</p>
<p>lee님 : 55세</p>
 --%>


</body>
</html>








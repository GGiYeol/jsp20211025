<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="sample01.MyBook" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
List<MyBook> books = new ArrayList<MyBook>();
books.add(new MyBook("java", 50000));
books.add(new MyBook("html", 30000));
books.add(new MyBook("spring", 70000));

for (MyBook book : books) {
%>
	<p><%= book.getTitle() %> : <%= book.getPrice() %>원 </p>
<%
}
%>

</body>
</html>
















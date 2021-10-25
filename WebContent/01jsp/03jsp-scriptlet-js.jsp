<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	for(int i=0; i<5; i++){
		out.write("<p>스크립트릿으로 작성한 html</p>\r\n");
	}
%>
<script>
for(let i = 0; i<5; i++){
document.write("<p>jsp로 작성한 html</p>");
}
</script>
</body>
</html>
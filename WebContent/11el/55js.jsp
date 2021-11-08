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

<h1>javascript연습</h1>

<%
pageContext.setAttribute("name", "korea");
pageContext.setAttribute("city", "seoul");
%>

<script>
let name = "france";
let city = "paris";

let info1 = `name : ${name } , city : ${city }`;
/*jsp페이지 내에서 작성되기 때문에 page 영역부터 attribute를 찾는다  */
/*france, paris는 javascript변수로 되어있기 때문에, 그래도 출력 되게 만든다.  */
let info2 = `name : \${name}, city : \${city}`;
/*해석해서 출력하는 것이 아니라, 그 자체를 출력하게 해준다.  */
 
console.log(info1);
console.log(info2);

</script>

<%


%>

</body>
</html>
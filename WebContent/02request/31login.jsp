<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%--
id, password 파라미터를 post 방식 전송
 --%>
<form action="" method="post">
id : <input type="text" name="id" id=""> <br>
pw : <input type="password" name="password" id=""> <br>
<input type="submit" value="로그인">

</form>

 
<%--
id가 myid
password가 mypassword 일 때만
로그인 성공 메시지 출력

그렇지 않으면
'아이디나 패스워드가 일치하지 않습니다' 메시지 출력

 --%>
<p>
<%
String userid = request.getParameter("id");
String password = request.getParameter("password");

if (userid != null && password != null) {
	if (userid.equals("myid") && password.equals("mypassword")) {
		out.print("로그인 성공");	
	} else {
		out.print("<script>");
		out.print("alert('아이디나 패스워드가 일치하지 않습니다')");
		out.print("</script>");
	}
}
%> 
</p>
</body>
</html>









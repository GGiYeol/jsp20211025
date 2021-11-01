<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<%--
 userid parameter 가 iamnormal이면 
	07view1normal.jsp로 포워딩
	
	userid parameter 가 iamvip이면
	07view2vip.jsp로 포워딩
	
--%>

<%
String userid = request.getParameter("userid");

if (userid.equals("iamnormal")) {
%>
	<jsp:forward page="07view1normal.jsp" />
<%
} else if (userid.equals("iamvip")) {
	
%>
	<jsp:forward page="07view2vip.jsp" />
<%
}
%>

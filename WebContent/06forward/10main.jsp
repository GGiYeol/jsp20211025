<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>


<%
String code = request.getParameter("code");
%>

<%
if ("food".equals(code)) {
	String[] obj = {"apple", "melon", "banana", "water"};
	request.setAttribute("food", obj);
%>
	<jsp:forward page="10pagea.jsp"></jsp:forward>
<% 
} else if ("song".equals(code)){
	List<String> o = new ArrayList<>();
	o.add("yesterday");
	o.add("let it be");
	o.add("butter");
	o.add("jean");
	request.setAttribute("song", o);
%>
	<jsp:forward page="10pageb.jsp"></jsp:forward>
<%
}
%>
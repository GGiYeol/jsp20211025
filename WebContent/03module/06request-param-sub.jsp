<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<div>

<%
Enumeration<String> iter =  request.getParameterNames();

while(iter.hasMoreElements()){
%>	
	<p><%= iter.nextElement()%></p>
<% 
}
%>

</div>
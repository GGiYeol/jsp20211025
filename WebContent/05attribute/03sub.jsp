<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<div>
	<ul>
	
	<%
		String[] items = (String[]) request.getAttribute("arr1");
	
		for(String item : items){
			%>
			
			<li><%= item %></li>
	<% 		
		}
	%>
	
	</ul>
</div>
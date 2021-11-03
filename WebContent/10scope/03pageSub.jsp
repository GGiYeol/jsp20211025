<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<div>
	<h1>subpage</h1>
	
	<%= pageContext.getAttribute("pageAttr2") %>
</div>
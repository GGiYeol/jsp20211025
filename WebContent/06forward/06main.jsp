<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<%

String[] list = {"korea", "japan", "us", "uk"};
request.setAttribute("items", list);
%>
<jsp:forward page="06other.jsp" />
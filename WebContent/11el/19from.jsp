<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>


<%
Map<String, String> data = new HashMap<>();
data.put("name", "computer");
data.put("city", "ny");
data.put("1000", "son");
data.put("this day", "11월 4일");

request.setAttribute("data1", data);
%>
<jsp:forward page="19to.jsp" />
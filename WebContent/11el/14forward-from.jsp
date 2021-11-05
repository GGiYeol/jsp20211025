<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="sample03javabean.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<%
Bean03 obj1 = new Bean03();
obj1.setName("korea");
obj1.setAge(30000);
obj1.setKid(false);
request.setAttribute("bean1", obj1);
%>

<jsp:forward page="14forward-to.jsp"></jsp:forward>
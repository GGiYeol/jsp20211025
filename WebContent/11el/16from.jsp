<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="sample03javabean.*" %>
<% request.setCharacterEncoding("utf-8"); %>


<%
Bean04 b2 = new Bean04();
b2.setAge(99999);
b2.setNickName("captain");
b2.setVip(true);

session.setAttribute("bean2", b2);

response.sendRedirect("16to.jsp");
%>
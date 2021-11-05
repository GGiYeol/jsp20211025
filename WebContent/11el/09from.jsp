<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>


<%
session.setAttribute("city", "seoul");
session.setAttribute("pop", 500000);
session.setAttribute("vip", true);
session.setAttribute("pi", 3.14);



response.sendRedirect("09to.jsp");
%>
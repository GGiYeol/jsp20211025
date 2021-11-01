<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<%--
1
session 에 "food"라는 이름의 attribute를 "apple"값으로 넣어두기



2
08to.jsp  리디렉션
--%>

<%
session.setAttribute("food", "apple");
response.sendRedirect("08to.jsp");
%>
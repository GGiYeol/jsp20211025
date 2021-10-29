<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<div>
param1 : <%= request.getParameter("param1") %> <br>
attr1 : <%= request.getAttribute("attr1")%>

</div>
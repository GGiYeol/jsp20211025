<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<%
// application 영역에 파라미터로 받은 userName을
// list에 추가하고 
List<String> list = (List<String>) application.getAttribute("members");
if (list == null) {
	list = new ArrayList<>();
	application.setAttribute("members", list);
}

String userName = request.getParameter("userName");
if (userName != null) {
	list.add(userName);
}

// member-list.jsp로 redirect
response.sendRedirect("06member-list.jsp");
%>
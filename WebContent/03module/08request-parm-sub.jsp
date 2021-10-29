<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>


<div>

<!-- ul.menu>li.menu-item*3>a -->
<ul class="menu">
	<li class="menu-item">
		<a href=""><%= request.getParameter("menu1") %></a>
	</li>
	<li class="menu-item">
		<a href=""><%= request.getParameter("menu2") %></a>
	</li>
	<li class="menu-item">
		<a href=""><%= request.getParameter("menu3") %></a>
	</li>
</ul>

</div>
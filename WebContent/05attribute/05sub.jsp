<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<style>
	.menu{
		display: flex;
		padding: 0px;
		margin: 0px;
		margin-bottom:10px;
		list-style: none;
		background-color: gray;
		
	}
	
	.menu-item{
		padding: 15px;
		text-align: center;
		background-color: black;
	}
	
	.menu-item a{
		color: white;
		text-decoration: none;
		font-weight: bold;
	}
	
	.menu-item:hover{
		background-color: green;
	}
	
</style>

<div>
	<ul class="menu">
	
		<%-- 
		
		a 요소를 갖는 li.menu-item 요소를
		"menuItems" 이름의 request attribute를 사용하여
		만들기
		
		 --%>
		 
		 <%
		 	String[] items = (String[]) request.getAttribute("menuItems");
		 	
		 	for (String item : items) {
		 %>
		 
		 		<li class="menu-item">
		 			<a href=""><%= item %></a>
		 		</li>
		 
		 <%
		 	}
		 %>
	</ul>
</div>










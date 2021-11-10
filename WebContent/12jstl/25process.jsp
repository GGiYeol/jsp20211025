<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import = "sample03javabean.*" %>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("utf-8"); %>


<%
//1.request 파라미터 받은 정보 값을 bean06객체로 만들어서
String title = request.getParameter("title");
//왜 title인가??? name을 title로 넣어놨기 때문		
String writer = request.getParameter("writer");
String priceStr = request.getParameter("price");
//String으로 받는 이유?? getparameter로 받는 객체가 string이기 때문
//integer정보로 변환해야함
int price = Integer.parseInt(priceStr);
String publisher = request.getParameter("publisher");
//실제로는 위험한 코드. exception이 일어날 수 있음
String stockStr = request.getParameter("stock");
int stock = Integer.parseInt(stockStr);
Bean06 book = new Bean06(title, writer, price, publisher, stock);
//2.application영역에 저장(실제로는 db에저장)
List<Bean06> list = (List<Bean06>) application.getAttribute("books");
if(list ==null){
	list = new ArrayList<>();
	application.setAttribute("books", list);
}
list.add(book);
//3.25list-book.jsp로 redirect
response.sendRedirect("25list-book.jsp");




%>
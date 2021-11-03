<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="sample01.MyBook" %>
<% request.setCharacterEncoding("utf-8"); %>

<%-- 06signup-process.jsp 참고 --%>
<%
List<MyBook> books = (List<MyBook>) application.getAttribute("books");
if (books == null) {
	books = new ArrayList<>();
	application.setAttribute("books", books);
}

// request 파라미터 처리
String title = request.getParameter("title");
String priceString = request.getParameter("price");
priceString = priceString == null ? "0" : priceString;

int price = Integer.parseInt(priceString);

MyBook book = new MyBook(title, price);

//리스트에 추가
books.add(book);

// 리디렉션
response.sendRedirect("07book-list.jsp");

%>







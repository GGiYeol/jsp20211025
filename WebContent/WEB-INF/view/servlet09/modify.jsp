e<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">

<title>Insert title here</title>
</head>
<body>


	<!-- .container>.row>.col-2+col-10 -->
	<div class="container">
		<div class="row">
			<div class="col-2">
			<%-- side menu --%>
			<!-- ul.nav.flex-column>li.nav-item*3>a.nav-link -->
			<ul class="nav flex-column">
			<!-- 누르면 어디로 이동할지 링크 첨부 -->
				<li class="nav-item">
					<a href="${pageContext.request.contextPath }/servlet09/main" class="nav-link">메인</a>
				</li>
				<li class="nav-item">
					<a href="${pageContext.request.contextPath }/servlet09/add" class="nav-link">추가하기</a>
				</li>
				<li class="nav-item">
					<a href="${pageContext.request.contextPath }/servlet09/list" class="nav-link">리스트</a>
				</li>
			</ul>
			</div>
			<div class = "col-10">
			<%-- main contents --%>
			<h1>책 수정</h1>
			<form method="post">
			<input type="hidden" name="index" value="${index }">
			<!-- .form-group*5>label+input.form-control -->
			<div class="form-group">
			<!-- param들을 받을 수 있게 name으로 추가 -->
				<label>제목</label>
				<input type="text" class="form-control" name = "title" value="${book.title }">
			</div>
			<div class="form-group">
				<label>저자</label>
				<input type="text" class="form-control" name="writer"value="${book.writer }">
			</div>
			<div class="form-group">
				<label>가격</label>
				<input type="number" class="form-control"name="price"value="${book.price }">
			</div>
			<div class="form-group">
				<label>출판사</label>
				<input type="text" class="form-control"name="publisher"value="${book.publisher }">
			</div>
			<div class="form-group">
				<label>재고</label>
				<input type="number" class="form-control" name="stock"value="${book.stock }">
			</div>
			<input type="submit" value="수정" class="btn btn-primary">
			</form>
			</div>
		</div>
	</div>


<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
</body>
</html>
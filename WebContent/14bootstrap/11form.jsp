<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags/13tag"%>
<%
	request.setCharacterEncoding("utf-8");
%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resource/css/icon/css/all.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">

<title>Insert title here</title>
</head>
<body>


	<!-- .container>.row>.col-12 -->
	<div class="container">
		<div class="row">
			<div class="col-12">
				<form action="../12jstl/25process.jsp" method="post">
					<div class="form-group">
						<label for="titleinput1">책 제목</label>
						<input type="text" name="title" class="form-control" id="titleinput1">
						<small id="titleHelp" class="form-text text-muted">책 제목을 입력해주세요.</small>
					</div>

					<div class="form-group">
						<label for="writerInput1">작성자</label>
						<input type="text" name="writer" class="form-control" id="writerInput1">
					</div>
					<div class="form-group">
						<label for="priceInput1">가격</label>
						<input type="number" name="price" class="form-control" id="priceInput1">
					</div>
					<div class="form-group">
						<label for="publisherInput1">출판사</label>
						<input type="text" name="publisher" class="form-control" id="publisherInput1">
					</div>
					<div class="form-group">
						<label for="stockInput1">재고</label>
						<input type="number" name="stock" class="form-control" id="stockInput1">
					</div>
					<button type="submit" class="btn btn-primary">등록</button>
				</form>
			</div>
		</div>
	</div>

	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
</body>
</html>
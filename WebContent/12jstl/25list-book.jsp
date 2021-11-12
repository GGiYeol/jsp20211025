<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resource/css/icon/css/all.css">
<!-- bootstrap용 외부 css파일 추가 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
<!-- 부트스트랩에서 사용하는 javascript파일 추가 -->

<style>
</style>




<title>Insert title here</title>
</head>
<body>
	<!- 책 목록을 보여줘야함  -->
	<h1>책 목록(${fn:length(books) }권)</h1>
	<a href="25book-form.jsp">책 등록하기</a>
	<c:if test="${empty books }">
		<p>아직 저장된 책이 없습니다.</p>
	</c:if>
	<c:if test="${not empty books }">
		<table class="table table-hover">
			<thead>
				<tr>
					<th></th>
					<th>#</th>
					<th>제목</th>
					<th>저자</th>
					<th>가격</th>
					<th>출판사</th>
					<th>재고</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${books }" var="book" varStatus="status">
					<tr>
						<!-- 삭제버튼 만들기 -->
						<!-- 링크를 전달해 줄 수 있는 방법은 쿼리스트링밖에 없음 -->
						<c:url value="25delete.jsp" var="deleteUrl">
							<c:param name="index" value="${status.index }" />
						</c:url>
						<c:url value="25modify-form.jsp" var="modifyUrl">
							<c:param name="index" value="${status.index }"></c:param>
						</c:url>
						<td>
							<%-- <a class="btn btn-danger" href="${deleteUrl }"><i class="fas fa-trash-alt"></i></a> --%>
							<button type="button" class="btn btn-danger delete-modal-button" data-href=" ${deleteUrl }" data-toggle="modal" data-target="#exampleModal">
								<i class="fas fa-trash-alt"></i>
							</button>
							<!-- a.btn.btn-secondary>i.fas.fa-edit -->
							<a href="${modifyUrl }" class="btn btn-secondary">
								<i class="fas fa-edit"></i>
							</a>
						</td>
						<td>${status.count }</td>
						<td>${book.title }</td>
						<td>${book.writer }</td>
						<td>${book.price }</td>
						<td>${book.publisher }</td>
						<td>${book.stock }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</c:if>
	<!-- modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">삭제하시겠습니까?</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
					<a id="modal-accept-button1" href="#" class="btn btn-primary">확인</a>
				</div>
			</div>
		</div>
	</div>


	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
	
	<script>
		$(document).ready(function() {
			$(".delete-modal-button").click(function() {
				let href = $(this).attr("data-href");
				$("#modal-accept-button1").attr("href", href);
			});
		});
	</script>
</body>
</html>
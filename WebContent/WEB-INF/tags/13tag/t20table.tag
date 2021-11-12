<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

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
				<c:url value="25delete.jsp" var="deleteUrl">
					<c:param name="index" value="${status.index }" />
				</c:url>
				<c:url value="25modify.jsp" var="modifyUrl">
					<c:param name="index" value="${status.index }" />
				</c:url>
				<td>
					<%-- <a class="btn btn-danger" href="${deleteUrl }"><i class="fas fa-trash-alt"></i></a> --%>
					<button type="button" class="btn btn-danger" data-toggle="modal" data-target="#exampleModal">
						<i class="fas fa-trash-alt"></i>
					</button>

					<a href="${modifyUrl }" class="btn btn-secondary">
						<i class="fas fa-edit"></i>
					</a>
				</td>
				<td>${status.count }</td>
				<td>
					<c:out value="${book.title }" />
				</td>
				<td>
					<c:out value="${book.writer }" />
				</td>
				<td>
					<c:out value="${book.price }" />
				</td>
				<td>
					<c:out value="${book.publisher }" />
				</td>
				<td>
					<c:out value="${book.stock }" />
				</td>
			</tr>
		</c:forEach>
	</tbody>
</table>
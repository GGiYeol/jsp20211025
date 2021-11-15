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

	<!-- .container>.row>.col*2 -->
	<div class="container">
		<div class="row">
			<div class="col">
				<h1>Lorem ipsum dolor.</h1>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aut sapiente perspiciatis delectus iure amet reiciendis optio nemo inventore consequuntur vitae voluptatem accusantium repudiandae nostrum ducimus provident laborum at illo autem.</p>
			</div>
			<div class="col">
				<div id="carouselExampleSlidesOnly" class="carousel slide" data-ride="carousel" data-interval="1000">
					<ol class="carousel-indicators">
						<li data-target="#carouselExampleSlidesOnly" data-slide-to="0" class="active"></li>
						<li data-target="#carouselExampleSlidesOnly" data-slide-to="1"></li>
						<li data-target="#carouselExampleSlidesOnly" data-slide-to="2"></li>
					</ol>
					<div class="carousel-inner">
						<div class="carousel-item active">
							<img src="${pageContext.request.contextPath }/resource/image/la.jpg" class="d-block w-100" alt="...">
						</div>
						<div class="carousel-item">
							<img src="${pageContext.request.contextPath }/resource/image/ny.jpg" class="d-block w-100" alt="...">
						</div>
						<div class="carousel-item">
							<img src="${pageContext.request.contextPath }/resource/image/chicago.jpg" class="d-block w-100" alt="...">
						</div>
					</div>
					<button class="carousel-control-prev" type="button" data-target="#carouselExampleSlidesOnly" data-slide="prev">
						<span class="carousel-control-prev-icon" aria-hidden="true"></span>
						<span class="sr-only">Previous</span>
					</button>
					<button class="carousel-control-next" type="button" data-target="#carouselExampleSlidesOnly" data-slide="next">
						<span class="carousel-control-next-icon" aria-hidden="true"></span>
						<span class="sr-only">Next</span>
					</button>
				</div>
			</div>


			<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
			<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
</body>
</html>
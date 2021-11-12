<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags/13tag" %>
<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">

<style>
	.row :nth-child(odd) {
		background-color: seaGreen;
	}
	.row :nth-child(even) {
		background-color: skyBlue;
	}
	#shop-container {
		background-color: gold;
		height: 288px;
	}
	
	#login-container {
		background-color: silver;
	}
	
	#ad-container, #login-container {
		height: 135px;
	}
	
	#paper-container > .row {
		height: 72px;
	} 
</style>

<title>Insert title here</title>
</head>
<body>

<!-- .container>.row>.col-8+.col-4 -->
<div class="container">
	<div class="row">
		<div class="col-8">
			<div id="ad-container">
				..광고...
			</div>
			<div id="paper-container">
				<!-- .row*4>.col-2{paper}*6 -->
				<div class="row">
					<div class="col-2">paper</div>
					<div class="col-2">paper</div>
					<div class="col-2">paper</div>
					<div class="col-2">paper</div>
					<div class="col-2">paper</div>
					<div class="col-2">paper</div>
				</div>
				<div class="row">
					<div class="col-2">paper</div>
					<div class="col-2">paper</div>
					<div class="col-2">paper</div>
					<div class="col-2">paper</div>
					<div class="col-2">paper</div>
					<div class="col-2">paper</div>
				</div>
				<div class="row">
					<div class="col-2">paper</div>
					<div class="col-2">paper</div>
					<div class="col-2">paper</div>
					<div class="col-2">paper</div>
					<div class="col-2">paper</div>
					<div class="col-2">paper</div>
				</div>
				<div class="row">
					<div class="col-2">paper</div>
					<div class="col-2">paper</div>
					<div class="col-2">paper</div>
					<div class="col-2">paper</div>
					<div class="col-2">paper</div>
					<div class="col-2">paper</div>
				</div>
			</div>
		</div>
		<div class="col-4">
			<!-- div#login-container+div#shop-container -->
			<div id="login-container">
				...login...
			</div>
			<div id="shop-container">
				...mall...
			</div>
		</div>
	</div>
</div>


<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
</body>
</html>













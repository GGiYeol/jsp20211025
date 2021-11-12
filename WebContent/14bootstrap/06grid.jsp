<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix = "fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "my" tagdir="/WEB-INF/tags/13tag" %>
<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">

<style>
	.row {
	background-color: silver;
	}
	
	.row :nth-child( even){
		background-color: seaGreen;
	}
	.row :nth-child( odd){
		background-color: springGreen;
	}
</style>

<title>Insert title here</title>
</head>
<body>

<!-- .container>.row>.col{$}*12> -->
<div class="container">
	<div class="row">
		<div class="col">1</div>
		<div class="col">2</div>
		<div class="col">3</div>
		<div class="col">4</div>
		<div class="col">5</div>
		<div class="col">6</div>
		<div class="col">7</div>
		<div class="col">8</div>
		<div class="col">9</div>
		<div class="col">10</div>
		<div class="col">11</div>
		<div class="col">12</div>
	</div>
</div>

<!-- .container>.row>.col*3>lorem1 -->
<div class="container">
	<div class="row">
		<div class="col-2">Lorem.</div>
		<div class="col-3">Ullam.</div>
		<div class="col-4">Eaque.</div>
	</div>
</div>

<!-- .container>.row>.col+.col-4+.col -->
<div class="container">
	<div class="row">
		<div class="col">1</div>
		<div class="col-4">2</div>
		<div class="col">3</div>
	</div>
</div>

<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
</body>
</html>
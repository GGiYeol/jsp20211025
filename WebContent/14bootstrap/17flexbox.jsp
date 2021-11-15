<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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

<style>
  .my-container {
    background-color: silver;
    display: flex;
    justify-content: center;
  }
  
  .my-item {
    background-color: seaGreen;
  }
  
  .my-container2 {
    background-color: skyblue;
  }
  .my-item2 {
    background-color: gold;
  }
  
  .my-container3 {
    height: 300px;
    background-color: silver;
/*     display: flex;
    justify-content: center;
    align-items: center; */
  }
  
  .my-item3 {
    height: 50px;
    width: 200px;
    background-color: gold;
  }
</style>
<title>Insert title here</title>
</head>
<body>

  <!-- .my-container>.my-item>lorem3 -->
  <div class="my-container">
  	<div class="my-item">Lorem ipsum dolor.</div>
  </div>
  
  <!-- .my-container2>.my-item2>lorem3 -->
  <div class="my-container2 d-flex justify-content-center">
  	<div class="my-item2">Lorem ipsum dolor.</div>
  </div>
  
  <hr>
  
  <!-- .my-container3>.my-item3{center} -->
  <div class="my-container3 d-flex justify-content-center align-items-center">
  	<div class="my-item3">center</div>
  </div>

  <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
</body>
</html>










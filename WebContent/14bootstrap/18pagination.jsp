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

<title>Insert title here</title>
</head>
<body>

  <!-- .container>.row -->
  <div class="container">
    <div class="row">
      <nav aria-label="Page navigation example">
        <ul class="pagination">
          <li class="page-item">
            <a class="page-link" href="#">Previous</a>
          </li>
          <li class="page-item">
            <a class="page-link" href="#">1</a>
          </li>
          <li class="page-item active">
            <a class="page-link" href="#">2</a>
          </li>
          <li class="page-item">
            <a class="page-link" href="#">3</a>
          </li>
          <li class="page-item">
            <a class="page-link" href="#">Next</a>
          </li>
        </ul>
      </nav>
    </div>
  </div>

  <hr>

  <!-- .container>.row>.col -->
  <div class="container">
    <div class="row">
      <div class="col">
        <!-- nav>ul.pagination -->
        <nav>
          <ul class="pagination">
            <c:forEach begin="1" end="10" var="i">

              <c:if test="${param.cpage eq i }" var="current">
                <li class="page-item active">
                  <a href="#" class="page-link">${i }</a>
                </li>
              </c:if>
              <c:if test="${not current }">
                <li class="page-item">
                  <a href="#" class="page-link">${i }</a>
                </li>
              </c:if>

              <!-- li.page-item>a.page-link -->
            </c:forEach>
          </ul>
        </nav>

      </div>
    </div>
  </div>

  <hr>

  <div class="container">
    <div class="row">
      <div class="col">
        <!-- nav>ul.pagination -->
        <nav>
          <ul class="pagination">
            <c:forEach begin="1" end="10" var="i">
              <li class="page-item ${param.cpage eq i ? 'active' : '' }">
                <a href="#" class="page-link">${i }</a>
              </li>
            </c:forEach>
          </ul>
        </nav>

      </div>
    </div>
  </div>

  <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
</body>
</html>













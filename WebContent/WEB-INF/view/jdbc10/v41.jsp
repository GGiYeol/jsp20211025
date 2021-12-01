<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

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
  <!-- .container>.row>.col>h1{고객들(page)}+table.table>thead>tr>th*7^^tbody -->
  <div class="container">
    <div class="row">
      <div class="col">
        <h1>고객들(page)</h1>
        <table class="table">
          <thead>
            <tr>
              <th>ID</th>
              <th>Customer Name</th>
              <th>Contact Name</th>
              <th>Address</th>
              <th>City</th>
              <th>PostalCode</th>
              <th>Country</th>
            </tr>
          </thead>
          <tbody>
            <c:forEach items="${list }" var="cus">
              <tr>
                <td>${cus.customerID }</td>
                <td>${cus.customerName }</td>
                <td>${cus.contactName }</td>
                <td>${cus.address }</td>
                <td>${cus.city }</td>
                <td>${cus.postalCode }</td>
                <td>${cus.country }</td>
              </tr>
            </c:forEach>
          </tbody>
        </table>
      </div>
    </div>

    <!-- pagenation -->
    <div class="row justify-content-center">
      <!-- nav>ul.pagination>li.page-item*9>a.page-link[href='#']{$} -->
      <nav>
        <ul class="pagination">
          <c:forEach begin="1" end="${endPage }" var="num">
            <c:url value="/jdbc10/s41" var="link">
              <c:param name="page" value="${num }"></c:param>
            </c:url>
            <li class="page-item ${num eq param.page ? 'active' : '' } ${empty param.page and num eq 1 ? 'active' : ''}">
              <a href="${link }" class="page-link">${num }</a>
            </li>
          </c:forEach>
        </ul>
      </nav>
    </div>
  </div>

  <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
</body>
</html>










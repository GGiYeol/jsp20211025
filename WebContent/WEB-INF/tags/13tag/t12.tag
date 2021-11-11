<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix = "fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ attribute name = "a" % type="java.lang.String[]"%>
<%@ attribute name = "b" % type="int[]"%>

<!-- 타입을 명시하지 않으면 기본값은 string -->

<c:forEach items="${a }" var="item">
${item }<br>
</c:forEach>

<hr>

<c:forEach items ="${b}" var="item2">
${item2 } <br>
</c:forEach>


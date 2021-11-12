<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ attribute name="datas" type="java.lang.Object" %>
<%-- @ attribute name="datas" type="java.util.Map" --%>

<table class="table">
	<c:forEach items="${datas }" var="entry">
		<tr>
			<td>${entry.key }</td>
			<td>${entry.value }</td>
		</tr>		
	</c:forEach>
</table>
<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ tag dynamic-attributes="attrMap" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div>
	<c:forEach items="${attrMap }" var="attr">
		<p>${attr.key } : ${attr.value }</p>
	</c:forEach>
</div>
<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ attribute name="count" required="true" type="java.lang.Integer" %>

<c:forEach begin="${1 }" end="${count }">
	<jsp:doBody />
</c:forEach>
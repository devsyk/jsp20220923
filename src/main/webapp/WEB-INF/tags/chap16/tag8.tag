<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ tag dynamic-attributes="attrMap" %>
<%@ attribute name="attr1" %>

<div>
	${attr1 }
</div>
<div>
	${attrMap }
</div>
<div>
	<%-- 동적 attribute map 전체 탐색 --%>
	<c:forEach items="${attrMap }" var="attr">
		<p>${attr.key } : ${attr.value }</p>
	</c:forEach>
</div>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>pageScope, requestScope, sessionScope, applicationScope</h3>
	<h3>각 영역의 attribute를 저장하고 있는 Map객체</h3>
	
	<%
	pageContext.setAttribute("pageAttr1", "pageVal1");
	%>
	<p>${pageAttr1 }</p>
	<p>${pageScope.pageAttr1 }</p>
	<p>${pageScope["pageAttr1"] }</p>
	<%-- <p>${page attr2 }</p> --%>
	<p>${pageScope["page attr2"] }</p>
</body>
</html>
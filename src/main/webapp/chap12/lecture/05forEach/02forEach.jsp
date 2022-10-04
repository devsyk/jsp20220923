<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>구구단 3단 출력</h3>
	<c:forEach begin="1" end="9" var="x">
		<p>3 x ${x } = ${x * 3 }</p>
	</c:forEach>
</body>
</html>
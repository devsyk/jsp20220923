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
	<c:choose>
		<c:when test="${param.genre == 'comedy' }">
			<p>코메디 영화</p>
		</c:when>
		<c:when test="${param.genre == 'family' }">
			<p>가족 영화</p>
		</c:when>
		<c:when test="${param.genre == 'action' }">
			<p>액션 영화</p>
		</c:when>
		<c:otherwise>
			<p>좋아하는 장르를 선택해주세요.</p>
		</c:otherwise>
	</c:choose>
</body>
</html>
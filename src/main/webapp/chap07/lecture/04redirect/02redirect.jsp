<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>02redirect.jsp</h1>
	<%
	// 302 응답 : 다른 곳으로 다시 요청 보내라
	response.sendRedirect("https://www.daum.net");
	%>
</body>
</html>
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
	<h1>scope 객체 사용시 주의할 점</h1>
	<h1>pageContext, request는 thread - safe</h1>
	<h1>session, application는 thread - unsafe</h1>
	
	<h3>application에는 가능한 쓰지 않고 읽기 전용으로</h3>
</body>
</html>
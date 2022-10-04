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
	<!-- http://localhost:8080/jsp20220923/chap11/lecture/08operator/04arithmetic.jsp?a=3&b=5&x=10&y=20&num1=100&num2=300 -->
	<p>${param.a + param.b }</p>
	<p>${param.x - param.y }</p>
	<p>${param.num1 / param.num2 }</p>
</body>
</html>
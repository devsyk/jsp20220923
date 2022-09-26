<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="">
	이름 : <input type="text" name="name" value="name"><br>
	
	배송지 선택하기 : 
	<input type="radio" name="location" value="home"> 집
	<input type="radio" name="location" value="office"> 직장
	<input type="radio" name="location" value="other"> 기타<br>
	
	결제 수단 선택하기 : 
	<input type="radio" name="pay" value="cash"> 현금
	<input type="radio" name="pay" value="card"> 카드
	<input type="radio" name="pay" value="other"> 무통장입금<br><br>
	
	<input type="submit" value="전송">
</form>
<hr>
<%
String name = request.getParameter("name");
String loc = request.getParameter("location");
String pay = request.getParameter("pay");
%>
<p><%= name %>님의 배송지는 <%= loc %>입니다.</p>
<p>결제수단은 <%= pay %>입니다.</p>

</body>
</html>
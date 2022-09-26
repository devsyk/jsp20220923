<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>라디오 버튼</h1>
<form action="">
	<input type="checkbox" name="coffee" value="americano">
	<input type="checkbox" name="coffee" value="americano">
	<input type="checkbox" name="coffee" value="americano">

	<hr>
	<%-- 라디오버튼 : 같은 name 속성값 중에서 하나마 선택 가능 --%>
	<input type="radio" name="location" value="home">
	<input type="radio" name="location" value="work">
	<input type="radio" name="location" value="other">
	<br>
	
	<input type="submit" value="전송">
</form>

</body>
</html>
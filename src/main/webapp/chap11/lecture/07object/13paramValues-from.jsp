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
	<form action="13paramValues-to.jsp">
		주문일자 : <input type="date" name="date" value="2022-09-30">
		상품 : <br>
		<!-- select[multiple]>option*5 -->
		<select name="prod" id="" multiple="" size="5">
			<option value="ipad">ipad</option>
			<option value="tv">tv</option>
			<option value="cup">cup</option>
			<option value="note">note</option>
			<option value="galaxy">galaxy</option>
		</select>
		
		<!-- TV <input type="checkbox" name="prod" value="TV">
		computer <input type="checkbox" name="prod" value="computer">
		book <input type="checkbox" name="prod" value="book">
		desk <input type="checkbox" name="prod" value="desk">
		notebook <input type="checkbox" name="prod" value="notebook"> -->
		<br>
		<input type="submit" value="주문" />
	</form>
</body>
</html>
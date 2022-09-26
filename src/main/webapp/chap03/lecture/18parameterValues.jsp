<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- form>(input[name="scores"]+br)*3+input:s -->
<form action="">
	<input type="text" name="scores" value="0">
	<br>
	<input type="text" name="scores" value="0">
	<br>
	<input type="text" name="scores" value="0">
	<br>
	<input type="submit" value="평균구하기">
</form>

<hr>

<%
String[] scores = request.getParameterValues("scores");
if(scores != null) {
	int sum = 0;
	double avg = 0;
	
	for(String score : scores) {
		sum += Integer.valueOf(score);
		
		out.print("<p>");
		out.print("점수 : " + score);
		out.print("</p>");
	}
	
	avg = (double)sum / scores.length;
	
%>	
	 
	<p>평균 : <%= avg %></p>

<%	
}
%>


</body>
</html>
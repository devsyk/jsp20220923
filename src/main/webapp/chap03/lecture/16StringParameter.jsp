<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>스트링 파라미터를 다른 타입으로 변경</h1>
<form action="">
국어: <input type="text" name="kor"> <br>
영어: <input type="text" name="eng"> <br>
수학: <input type="text" name="math"> <br>
<br>
<%-- submit 버튼 value 속성 : 버튼에 표시되는 내용 --%>
<input type="submit" value="평균 구하기">
</form>

<hr>

<%
String korStr = request.getParameter("kor");
String engStr = request.getParameter("eng");
String mathStr = request.getParameter("math");

Integer kor = 0;
Integer eng = 0;
Integer math = 0;

if(korStr != null && mathStr != null && engStr != null) {
	kor = Integer.valueOf(korStr);	
	eng = Integer.valueOf(engStr);
	math = Integer.valueOf(mathStr);
}

double avg = (eng + math + kor) / 3.0;
%>

<%-- 영어, 수학, 국어 점수의 평균 구하기 --%>
<p>국영수 평균 : <%= avg %>점

</body>
</html>
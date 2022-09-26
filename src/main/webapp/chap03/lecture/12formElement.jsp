<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>form element</title>
</head>
<body>

<h1>form element</h1>

<%-- form 요소의 action attr : form 요소 내의 인풋 값들을 어디에 보내야 하는지 --%>
<form action="12formElement.jsp">
	<%-- text input field --%>
	<%-- name attr : 쿼리스트링을 완성할 때 사용될 파라미터 이름 --%>
	<input type="text" name="coffee" />
	
	<%-- submit button --%>
	<input type="submit" />
</form>

<hr />

<%
String val = request.getParameter("coffee");
%>

coffee : <%= val %>

</body>
</html>
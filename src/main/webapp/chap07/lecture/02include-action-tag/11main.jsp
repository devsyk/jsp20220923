<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="jsp20220923.chap07.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		Book book1 = new Book("java", 3000);
		Book book2 = new Book("html", 2000);
		
		request.setAttribute("b1", book1);
		request.setAttribute("b2", book2);
	%>
	
	<h3>attribute</h3>
	<div>
		<jsp:include page="11sub.jsp"></jsp:include>
	</div>
	
	<h3>el</h3>
	<div>
		<jsp:include page="11sub-el.jsp"></jsp:include>
	</div>
</body>
</html>
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
	<%
	String s1 = (String) request.getAttribute("attr1");
	String s2 = (String) session.getAttribute("attr1");
	String s3 = (String) application.getAttribute("attr1");
	%>
	
	<p><%= s1 %></p> 
	<p><%= s2 %></p> 
	<p><%= s3 %></p> 
	
	<hr>
	
	<%
	String s4 = (String) pageContext.getAttribute("attr1", pageContext.PAGE_SCOPE);
	String s5 = (String) pageContext.getAttribute("attr1", pageContext.REQUEST_SCOPE);
	String s6 = (String) pageContext.getAttribute("attr1", pageContext.SESSION_SCOPE);
	String s7 = (String) pageContext.getAttribute("attr1", pageContext.APPLICATION_SCOPE);
	%>
	
	<p><%= s4 %></p> 
	<p><%= s5 %></p> 
	<p><%= s6 %></p> 
	<p><%= s7 %></p> 
	
</body>
</html>
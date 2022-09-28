<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>

<%
	session.setAttribute("num1", 10);
	session.setAttribute("num2", 20);
	
	response.sendRedirect("09to.jsp");
%>
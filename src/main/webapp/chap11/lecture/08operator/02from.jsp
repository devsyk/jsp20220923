<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>

<%
	request.setAttribute("num1", 99);
	request.setAttribute("num2", 77);
	request.setAttribute("num3", 100);
	request.setAttribute("num4", 50);
	request.setAttribute("n5", 44);
	request.setAttribute("n6", 22);
	request.setAttribute("n7", 121);
	request.setAttribute("n8", 10);
	request.setAttribute("num9", 33);
	request.setAttribute("num10", 22);
%>
<jsp:forward page="02to.jsp" />
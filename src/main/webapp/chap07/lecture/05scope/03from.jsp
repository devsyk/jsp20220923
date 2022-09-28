<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%
	request.setAttribute("attr1", "A");
	session.setAttribute("attr1", "B");
	application.setAttribute("attr1", "C");
%>

<jsp:forward page="03to.jsp" />
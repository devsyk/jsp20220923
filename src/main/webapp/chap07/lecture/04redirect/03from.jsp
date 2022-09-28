<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>

<%
// 03to.jsp로 다시 요청 보냄
response.sendRedirect("03to.jsp");
%>
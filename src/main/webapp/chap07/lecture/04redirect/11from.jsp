<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<%
	Map<String, String> map = Map.of("song1", "Asong", "song2", "Bsong");
	session.setAttribute("songs", map);
	response.sendRedirect("11to.jsp");
%>
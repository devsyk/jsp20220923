<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
String src = "서울";
String str = URLEncoder.encode(src, "utf-8");
response.sendRedirect("07to.jsp?address=" + str);
%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%--
	list라는 이름의 java.util.List 타입의 객체를 attribute에 넣는 코드 작성
	필요하면 다른 attribute도 추가하세요
	 --%>
	<%
	List<String> list = new ArrayList<>();
	list.add("a");
	list.add("b");
	list.add("c");
	
	request.setAttribute("list", list);
	request.setAttribute("k", 1);
	request.setAttribute("x", 2);
	%>

	<p>${list[0] }</p> <%-- 출력 --%>
	<p>${list[k] }</p> <%-- 출력 --%>
	<p>${list[x] }</p> <%-- 출력 --%>
</body>
</html>
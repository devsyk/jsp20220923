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
	<%--
	두개의 Person 객체를 attribute로 추가하고
	property(name, age, alive)을 el로 출력하는 코드 작성
	--%>
	<%
	Person p1 = new Person();
	p1.setName("A");
	p1.setAge(50);
	p1.setAlive(true);
	
	Person p2 = new Person();
	p2.setName("B");
	p2.setAge(100);
	p2.setAlive(false);
	
	request.setAttribute("p1", p1);
	request.setAttribute("p2", p2);
	%>
	<h4>p1</h4>
	<p>${p1.name }</p>
	<p>${p1.age }</p>
	<p>${p1.alive }</p>
	<h4>p2</h4>
	<p>${p2.name }</p>
	<p>${p2.age }</p>
	<p>${p2.alive }</p>
	
</body>
</html>
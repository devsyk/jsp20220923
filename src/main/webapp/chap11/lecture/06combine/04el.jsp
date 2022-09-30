<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, jsp20220923.chap07.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	Map<String, Person> map = new HashMap<>();
	request.setAttribute("people", map);
	
	Person p1 = new Person();
	p1.setName("A");
	p1.setAge(50);
	p1.setAlive(true);
	Person p2 = new Person();
	p1.setName("B");
	p1.setAge(100);
	p1.setAlive(true);
	
	map.put("person1", p1);
	map.put("person2", p2);	
	%>
		
	<p>${people.person1.name }</p>
	<p>${people.person1.age }</p>
	<p>${people.person1.alive }</p>
	<p>${people.person2.name }</p>
	<p>${people.person2.age }</p>
	<p>${people.person2.alive }</p>
	
</body>
</html>
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
	List<Car> list = new ArrayList<>();
	Car car1 = new Car();
	car1.setModel("A");
	car1.setPrice(1000);
	list.add(car1);
	Car car2 = new Car();
	car2.setModel("B");
	car2.setPrice(5000);
	list.add(car2);
	
	request.setAttribute("cars", list);
	%>
	
	<h4>CAR 1</h4>
	<p>${cars[0].company }</p>
	<p>${cars[0].price }</p>
	<p>${cars[0].model }</p>
	<h4>CAR 2</h4>
	<p>${cars[1].company }</p>
	<p>${cars[1].price }</p>
	<p>${cars[1].model }</p>
	
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="jsp20220923.chap07.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<%
	List<Person> l1 = new ArrayList<>();

	Person p1 = new Person();
	Person p2 = new Person();
	Person p3 = new Person();
		
	p1.setName("A");
	p2.setName("B");
	p3.setName("C");
	
	
	l1.add(p1);
	l1.add(p2);
	l1.add(p3);
	
	request.setAttribute("list", l1);
%>

<jsp:forward page="11to.jsp" />
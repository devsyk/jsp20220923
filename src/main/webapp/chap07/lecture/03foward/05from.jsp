<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>

<jsp:forward page="05to.jsp">
	<jsp:param value="10" name="age"/>
	<jsp:param value="abc@email.com" name="email"/>
</jsp:forward>
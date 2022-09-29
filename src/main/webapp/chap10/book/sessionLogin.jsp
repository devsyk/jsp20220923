<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>

<%
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	
	if(id.equals(password)) {
	session.setAttribute("MEMBERID", id);
%>
	<html>
	<head><title>로그인 성공</title></head>
	<body>
		로그인에 성공했습니다.
	</body>
	</html>
<%
	} else { 
%>
	<script>
		alert("로그인에 실패하였습니다.");
		history.go(-1);
	</script>	
<%	
	}
%>

<br>
<br>
<a href="sessionLoginForm.jsp">로그인 페이지로 돌아가기</a>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- num1과 num2가 모두 값이 있을 때는 더한 결과 출력 --%>
	<c:if test="${not empty param.num1 && not empty param.num2 }">
		<p>${param.num1 } + ${param.num2 } = ${param.num1 + param.num2 }</p>
	</c:if>
	<%-- 둘 중 하나라도 값이 없을 때는 두수를 입력해달라는 메세지 출력 --%>
	<c:if test="${empty param.num1 || empty param.num2 }">
		<p>두 수를 모두 입력해주세요.</p>
	</c:if>
	<a href="04from.jsp">돌아가기</a>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>

<div>
	<%
	//메인 페이지에서 session에 저장된 검색키워드 가져오기
	String k = (String) session.getAttribute("keyword");
	if(k == null) {
		k = "일반적인";
	}
	%>
	<h4><%= k %> 광고</h4>
</div>
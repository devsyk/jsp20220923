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
	<%
	//상품 페이지에서 가져온 파라미터
	String product = request.getParameter("product"); 
	
	//세션에서 장바구니목록(cart) 가져오기
	// - 이미 생성된 세션 사용
	//Map >> key : 상품명, val : 수량
	Map<String, Integer> cart = (Map<String, Integer>) session.getAttribute("cart");
	
	//세션에서 가져온 데이터가 없을 때 (처음 실행할 경우)
	// - 최초 요청시, 세션 생성
	if (cart == null) {
		cart = new HashMap<String, Integer>(); //cart Map 객체 새로 생성
		session.setAttribute("cart", cart); //장바구니목록(cart) 세션에 저장
	}
	
	//장바구니에 추가한 상품이 있을 경우 (null이 cart에 들어가는 것 방지)
	if (product != null && !product.trim().isEmpty()) {
		//이미 있는 상품명일 경우, 수량 1증가 (val = val +1)
		cart.computeIfPresent(product, (k, v) -> v + 1);
		//새로운 상품명일 경우, 수량은 1 (val = 1)
		cart.computeIfAbsent(product, (k) -> 1);
	}
	%>

	<h1>장바구니</h1>
	<ul>
		<%
		for (Map.Entry<String, Integer> entry : cart.entrySet()) {
			out.print("<li>");
			out.print(entry.getKey());
			out.print(" : ");
			out.print(entry.getValue());
			out.print("</li>");
			
		}
		%>
	</ul>

	<a href="product.jsp">상품 보기</a>
</body>
</html>
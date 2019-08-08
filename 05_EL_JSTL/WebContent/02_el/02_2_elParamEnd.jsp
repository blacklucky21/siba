<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<h2>주문 내역</h2>
		상품 명 : ${param.pname }<br>
		수량 : ${param.pcount }<br>
		옵션1: ${param.option }<br>
		
		<!--option파라미터 값 중 첫번째만 가져 옴  -->
		옵션 1: ${paramValues.option[0] }<br>
		옵션 2: ${paramValues.option[1] }<br>
		
		<!-- 배열을 가져올때는 paramValues 추가 -->
</body>
</html>
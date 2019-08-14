<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<h2>jstl fmt</h2>
		<p> 날짜,시간,숫자 데이터의 출력 형식을 지정할 때 사용</p>
		
		
		<h3>숫자 데이터 포맷 지정: formatNumber</h3>
		숫자 그대로 출력 : <fmt:formatNumber value="123456789" groupingUsed="false"/><br>
		숫자 그대로 출력 : <fmt:formatNumber value="123456789" groupingUsed="true"/><br>
		
		
		<b>실수 값 소숫점 아래 자릿수 지정:pattern 속성 사용(#,0을 자릿수로 사용)</b>
		#을 사용한 경우 : <fmt:formatNumber value="1.234567" pattern="#.##"></fmt:formatNumber> <br>
		<!-- 뒤에 무시하고 앞만나오게됨 -->
		#을 사용한 경우 : <fmt:formatNumber value="1.2" pattern="#.##"></fmt:formatNumber> <br>
		0을 사용한 경우 : <fmt:formatNumber value="1.2" pattern="#.00"></fmt:formatNumber><br>
		 <!-- 빈자리에 0을 넣어줌 -->
		
		
		
		<h3>type 속성으로 백분율, 통화기호 표시 처리</h3>
		<fmt:formatNumber value="0.12" type="percent"/><br>
		<fmt:formatNumber value="123456789" type="currency"/>
		
		
		
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>jstl core 라이브러리</h1>
	<h2>c:set태그</h2>
	<c:set var ="no1" value="${ param.num1 }"/>
	<c:set var="no2" value="${ param.num2 }"/>
	<%-- <c:set var="result" value="${param.num1 * param.num2 }"/> --%>
	<c:set var="result" value="${no1 *no2 }"/>
	<p>${no1} 곱하기 ${no2}의 값은? ${result }입니다.</p>
	
	<hr>
	
	<h2>c:remove태그</h2>
	<p>지정한 변수를 모든 scope에서 검색해 삭제하거나 지정한 scope에서 삭제</p>
	<c:set var="result" value="9999" scope="request"/>
	
	삭제 전 \${result } : ${result }<br>
	삭제 전 \${requestScope.result } : ${requestScope.result }<br>

			<!-- \ 붙여준 이유 $가 문자 그대로 들어가게 하기 위함 -->
			
	<br>
	<!--1. 모든 scope에서 삭제  -->
	<%-- <c:remove var="result" /> --%>
	
	
	<!-- 2. 특정 scope에서 삭제 -->
	<c:remove var="result" scope="page"/>
	삭제 후 \${result } : ${result }<br>
	삭제 후 \${requestScope.result } : ${requestScope.result }<br>
	
	
	
	











</body>
</html>
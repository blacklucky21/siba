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
	<c:if test="${param.num1> param.num2 }">
	${param.num1 }큽니다, ${param.num2}보다<br>
	</c:if>
	
	<c:if test="${param.num1< param.num2 }">
	${param.num2 }큽니다, ${param.num1}보다<br>
	</c:if>
	
	
	
	<c:if test="${Integer.parseInt(param.num1)> Integer.parseInt(param.num2) }">
	${param.num1 }큽니다, ${param.num2}보다
	</c:if>
	
	<c:if test="${Integer.parseInt(param.num1)< Integer.parseInt(param.num2) }">
	${param.num2 }큽니다, ${param.num1}보다
	</c:if>
	
	<c:if test="${(param.num1)== (param.num2) }">
	${param.num2 }같습니다, ${param.num1} 값과
	</c:if>
	
	 <%-- <c:if>는 if else가 없음 --%>
</body>
</html>
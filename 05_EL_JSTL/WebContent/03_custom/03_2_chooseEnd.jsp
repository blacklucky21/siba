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


<!--입력한 숫자를 5로 나눴을때 나머지가 0이면 인형
					1이면 오토바이 장난감
					2이면 라이터
	그 외에 다른 나머지는 꽝
  -->
  
  <c:choose>
  	<c:when test="${Integer.parseInt(param.num1) % 5 == 0 }">
  		인형을 뽑았습니다.
  	</c:when>
  	<c:when test="${Integer.parseInt(param.num1) % 5 == 1 }">
  		오토바이 장난감 뽑았다
  	</c:when>
  	
  	<c:when test="${Integer.parseInt(param.num1) % 5 ==2 }">
  		라이터를 뽑았다
  	</c:when>
  	
  	<c:otherwise>
 		 	꽝
  	</c:otherwise>
  
  
  	
  </c:choose>
</body>
</html>
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

<%
	String str1 = "안녕";
	String str2 = "안녕";
	
    System.out.println(str1 == str2);
%>

	<%-- <c:if test="${param.str1== param.str2 }"> --%>
	<%-- <c:if test="${param.str1.equals( param.str2) }"> --%>
	<c:if test="${param.str1 eq param.str2 }">
			${param.str1 }값과 ${param.str2}값이 같습니다.
		
		</c:if>

</body>
</html>
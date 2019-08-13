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

		<h1>우리가족 - scriplet</h1>
		<ol>
			<%
				String[] family = (String[])request.getAttribute("family");
			
			
				for(String f : family){	
										
			%>
				<li><%=f %></li>
			
			<%} %>
		
		</ol>
		
		<h1>우리 가족 - customActionTag</h1>
		
		<ol>
			<c:forEach var="f" items="${family }">
			
				<li>${f }</li>
			 </c:forEach>
		
		</ol>
		
		<h1>fn:split으로 생성된 배열 출력</h1>
		
		<ol>
			<c:forEach var="a" items="${alphabet }">
					<li>${a}</li>
			</c:forEach>
		</ol>
</body>
</html>
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
	<h1>우리 가족</h1>
	<ul>
		<ol>
		<c:forTokens var="f" items="${family}" delims=",">
	
				<li>${f }</li>
	
		</c:forTokens>
			</ol>
	</ul>
	
	
	
	<br>
	
		<h1>우리 가족</h1>
	<ul>
		<ol>
		<c:forTokens var="f" items="${familiesWithMultipleDelimiter}" delims=",/.">
							<!-- 여러가지가 있다면 delims 사용 -->
				<li>${f }</li>
	
		</c:forTokens>
			</ol>
	</ul>
	
</body>
</html>